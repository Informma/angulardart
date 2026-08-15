import 'package:angulardart_compiler/v1/src/compiler/compile_metadata.dart';
import 'package:angulardart_compiler/v1/src/compiler/identifiers.dart'
    show
        DomHelpers,
        Identifiers,
        RenderNodeHelpers,
        RenderNodeUpdateHelpers,
        SafeHtmlAdapters;
import 'package:angulardart_compiler/v1/src/compiler/ir/model.dart' as ir;
import 'package:angulardart_compiler/v1/src/compiler/ir/model.dart';
import 'package:angulardart_compiler/v1/src/compiler/output/output_ast.dart' as o;
import 'package:angulardart_compiler/v1/src/compiler/security.dart';
import 'package:angulardart_compiler/v1/src/compiler/view_compiler/compile_view.dart'
    show NodeReference, TextBindingNodeReference;
import 'package:angulardart_compiler/v2/context.dart';

import 'devtools.dart';
import 'interpolation_utils.dart';

/// Returns statements that update a [binding].
List<o.Statement> bindingToUpdateStatements(
  ir.Binding binding,
  o.Expression? appViewInstance,
  NodeReference? renderNode,
  bool isHtmlElement,
  o.Expression currValExpr,
) {
  // Wraps current value with sanitization call if necessary.
  var renderValue =
      _sanitizedValue(binding.target.securityContext, currValExpr);
  var visitor = _UpdateStatementsVisitor(
      appViewInstance, renderNode, binding.source, isHtmlElement, currValExpr);
  var updateStatement = binding.target.accept(visitor, renderValue);
  if (binding.source is BoundExpression) {
    updateStatement.sourceReference =
        (binding.source as BoundExpression).sourceReference;
  }
  var devToolsStatement =
      devToolsBindingStatement(binding, appViewInstance, currValExpr);
  return [
    if (devToolsStatement != null) devToolsStatement,
    updateStatement,
  ];
}

class _UpdateStatementsVisitor
    implements ir.BindingTargetVisitor<o.Statement, o.Expression> {
  final o.Expression? appViewInstance;
  final NodeReference? renderNode;
  final ir.BindingSource bindingSource;
  final bool isHtmlElement;
  final o.Expression currValExpr;

  _UpdateStatementsVisitor(
    this.appViewInstance,
    this.renderNode,
    this.bindingSource,
    this.isHtmlElement,
    this.currValExpr,
  );

  @override
  o.Statement visitAttributeBinding(
    ir.AttributeBinding attributeBinding, [
    o.Expression? renderValue,
  ]) {
    // TODO(b/171228413): Remove this deoptimization.
    var useSetAttributeIfImmutable = true;
    // Conditional attribute (i.e. [attr.disabled.if]).
    //
    // For now we treat this as a pure transform to make the
    // implementation simpler (and consistent with how it worked before)
    // - it would be a non-breaking change to optimize further.
    if (attributeBinding.isConditional) {
      // b/171226440: Avoid using "setAttribute" for conditionals, because we
      // try to use a (ternary) nullable-string, which is invalid. We either
      // need more plumbing in order to use "setAttribute" safely.
      if (CompileContext.current.emitNullSafeCode) {
        useSetAttributeIfImmutable = false;
      }
      renderValue = renderValue!.conditional(o.literal(''), o.nullExpr);
    } else if (attributeBinding.securityContext ==
            TemplateSecurityContext.none &&
        !isInterpolation(bindingSource) &&
        !bindingSource.isString) {
      // Convert to string if necessary.
      // Sanitized and interpolated bindings always return a string, so we only
      // check if values that don't require sanitization or interpolation need
      // to be converted to a string.
      renderValue = _convertAttributeRenderValue(renderValue, bindingSource);
    }
    if (attributeBinding.hasNamespace) {
      return o.importExpr(DomHelpers.updateAttributeNS).callFn([
        renderNode!.toReadExpr(),
        o.literal(attributeBinding.namespace),
        o.literal(attributeBinding.name),
        renderValue!,
      ]).toStmt();
    }

    // Phase 3 (SSR): Use RenderNode-based updateRenderAttribute.
    final attributeValue = bindingSource.isNullable && !useSetAttributeIfImmutable
        ? renderValue!.conditional(o.literal(''), o.nullExpr)
        : renderValue!;

    return o.importExpr(RenderNodeUpdateHelpers.updateRenderAttribute).callFn([
      renderNode!.toReadExpr(),
      o.literal(attributeBinding.name),
      attributeValue,
    ]).toStmt();
  }

  static o.Expression? _convertAttributeRenderValue(
    o.Expression? renderValue,
    ir.BindingSource bindingSource,
  ) {
    // Coerce non-String values into a String (or null) by transforming "baz"
    // into "baz?.toString()". This matches the historical AngularDart
    // behavior and keeps `[attr.foo]="boolExpr"` / `[attr.foo]="numExpr"`
    // bindings valid under null-safety.
    return renderValue!.callMethod(
      'toString',
      const [],
      checked: bindingSource.isNullable,
    );
  }

  @override
  o.Statement visitClassBinding(ir.ClassBinding classBinding,
      [o.Expression? renderValue]) {
    if (classBinding.name == null) {
      // TODO(b/126226538): Consider optimizing "static" classBindings in the
      // constructor to skip adding the shim classes.

      // Handle [attr.class]="expression" or [className]="expression".
      final renderMethod =
          isHtmlElement ? 'updateChildClass' : 'updateChildClassNonHtml';
      return appViewInstance!.callMethod(
          renderMethod, [renderNode!.toReadExpr(), renderValue!]).toStmt();
    } else {
      // Phase 3 (SSR): Use RenderNode-based updateRenderClass.
      final value = bindingSource.isNullable
          ? renderValue!.ifNull(o.literal(false))
          : renderValue!;

      return o.importExpr(RenderNodeUpdateHelpers.updateRenderClass).callFn([
        renderNode!.toReadExpr(),
        o.literal(classBinding.name),
        value,
      ]).toStmt();
    }
  }

  @override
  o.Statement visitPropertyBinding(ir.PropertyBinding propertyBinding,
      [o.Expression? renderValue]) {
    // Phase 3 (SSR): Use RenderNode.setProperty() directly for SSR.
    return renderNode!
        .toReadExpr()
        .callMethod('setProperty', [
          o.literal(propertyBinding.name),
          renderValue!,
        ])
        .toStmt();
  }

  // TODO(b/110433960): Should probably use renderValue instead of currValExpr.
  @override
  o.Statement visitStyleBinding(ir.StyleBinding styleBinding, [_]) {
    o.Expression styleValueExpr;
    if (styleBinding.unit != null) {
      // Append the unit to the bound expression if not null. For example:
      //
      //    ctx.width == null ? null : ctx.width.toString() + 'px'
      //
      final styleString = bindingSource.isString
          ? currValExpr
          : currValExpr.callMethod('toString', []);
      final styleWithUnit = styleString.plus(o.literal(styleBinding.unit));
      styleValueExpr =
          currValExpr.isBlank().conditional(o.nullExpr, styleWithUnit);
    } else {
      styleValueExpr = bindingSource.isString
          ? currValExpr
          : currValExpr.callMethod(
              'toString', [],
              // Use null check to bind null instead of string "null".
              checked: bindingSource.isNullable,
            );
    }
    // Phase 3 (SSR): Use RenderNode-based updateRenderStyle.
    return o.importExpr(RenderNodeUpdateHelpers.updateRenderStyle).callFn([
      renderNode!.toReadExpr(),
      o.literal(styleBinding.name),
      styleValueExpr,
    ]).toStmt();
  }

  @override
  o.Statement visitTabIndexBinding(ir.TabIndexBinding tabIndexBinding,
      [o.Expression? renderValue]) {
    // Phase 3 (SSR): Use RenderNode-based updateRenderTabIndex.
    final tabIndexExpr = renderValue is o.LiteralExpr
        ? (() {
            final value = renderValue.value;
            final tabIndex = value is String ? int.tryParse(value) : null;
            if (tabIndex == null) {
              // TODO(b/132985972): add source span for context.
              throw BuildError.withoutContext(
                'The "tabindex" attribute expects an integer value, but got: '
                '"$value"',
              );
            }
            return o.literal(tabIndex);
          })()
        : renderValue!;

    return o.importExpr(RenderNodeUpdateHelpers.updateRenderTabIndex).callFn([
      renderNode!.toReadExpr(),
      tabIndexExpr,
    ]).toStmt();
  }

  @override
  o.Statement visitTextBinding(ir.TextBinding textBinding,
      [o.Expression? renderValue]) {
    // TODO(alorenzen): Generalize updateExpr() to all NodeReferences.
    var node = renderNode as TextBindingNodeReference?;
    if (bindingSource.isBool ||
        bindingSource.isNumber ||
        bindingSource.isDouble ||
        bindingSource.isInt) {
      return node!.updateWithPrimitiveExpr(renderValue!).toStmt();
    }
    return node!.updateExpr(renderValue!).toStmt();
  }

  @override
  o.Statement visitHtmlBinding(ir.HtmlBinding htmlBinding, [_]) {
    throw UnsupportedError(
        '${ir.HtmlBinding}s are not supported as bound properties.');
  }

  @override
  o.Statement visitInputBinding(ir.InputBinding inputBinding,
      [o.Expression? renderValue]) {
    var value = renderValue!;
    if (bindingSource.isNullable && _isNonNullableBool(inputBinding.type)) {
      value = value.ifNull(o.literal(false));
    }
    return appViewInstance!
        .prop(inputBinding.propertyName)
        .set(value)
        .toStmt();
  }

  bool _isNonNullableBool(o.OutputType? type) {
    if (type == null) return false;
    if (type is! o.BuiltinType) return false;
    return type.name == o.BuiltinTypeName.Bool &&
        !type.hasModifier(o.TypeModifier.Nullable);
  }

  @override
  o.Statement visitCustomEvent(ir.CustomEvent customEvent,
      [o.Expression? renderValue]) {
    final appViewUtilsExpr = o.importExpr(Identifiers.appViewUtils);
    final eventManagerExpr = appViewUtilsExpr.prop('eventManager');
    return eventManagerExpr.callMethod(
      'addEventListener',
      [
        renderNode?.toReadExpr() ?? appViewInstance!,
        o.literal(customEvent.name),
        renderValue!
      ],
    ).toStmt();
  }

  @override
  o.Statement visitDirectiveOutput(ir.DirectiveOutput directiveOutput,
          [o.Expression? renderValue]) =>
      renderNode!.toWriteStmt(appViewInstance!
          .prop(directiveOutput.name)
          .callMethod(o.BuiltinMethod.SubscribeObservable, [renderValue!],
              checked: directiveOutput.isMockLike));

  @override
  o.Statement visitNativeEvent(ir.NativeEvent nativeEvent,
          [o.Expression? renderValue]) =>
      o.importExpr(RenderNodeHelpers.addRenderEventListener).callFn([
        renderNode?.toReadExpr() ?? appViewInstance!,
        o.literal(nativeEvent.name),
        renderValue!,
      ]).toStmt();
}

o.Expression _sanitizedValue(
  TemplateSecurityContext securityContext,
  o.Expression renderValue,
) {
  CompileIdentifierMetadata method;
  switch (securityContext) {
    case TemplateSecurityContext.none:
      return renderValue; // No sanitization needed.
    case TemplateSecurityContext.html:
      method = SafeHtmlAdapters.sanitizeHtml;
      break;
    case TemplateSecurityContext.style:
      method = SafeHtmlAdapters.sanitizeStyle;
      break;
    case TemplateSecurityContext.url:
      method = SafeHtmlAdapters.sanitizeUrl;
      break;
    case TemplateSecurityContext.resourceUrl:
      method = SafeHtmlAdapters.sanitizeResourceUrl;
      break;
  }
  return o.importExpr(method).callFn([renderValue]);
}

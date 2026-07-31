// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(InspectorDirective.serializer)
      ..add(InspectorNode.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(InspectorDirective)]),
          () => new ListBuilder<InspectorDirective>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(InspectorNode)]),
          () => new ListBuilder<InspectorNode>()))
    .build();
Serializer<InspectorNode> _$inspectorNodeSerializer =
    new _$InspectorNodeSerializer();
Serializer<InspectorDirective> _$inspectorDirectiveSerializer =
    new _$InspectorDirectiveSerializer();

class _$InspectorNodeSerializer implements StructuredSerializer<InspectorNode> {
  @override
  final Iterable<Type> types = const [InspectorNode, _$InspectorNode];
  @override
  final String wireName = 'InspectorNode';

  @override
  Iterable<Object?> serialize(Serializers serializers, InspectorNode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'directives',
      serializers.serialize(object.directives,
          specifiedType: const FullType(
              BuiltList, const [const FullType(InspectorDirective)])),
      'children',
      serializers.serialize(object.children,
          specifiedType:
              const FullType(BuiltList, const [const FullType(InspectorNode)])),
    ];
    Object? value;
    value = object.component;
    if (value != null) {
      result
        ..add('component')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(InspectorDirective)));
    }
    return result;
  }

  @override
  InspectorNode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InspectorNodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'component':
          result.component.replace(serializers.deserialize(value,
                  specifiedType: const FullType(InspectorDirective))!
              as InspectorDirective);
          break;
        case 'directives':
          result.directives.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(InspectorDirective)]))!
              as BuiltList<Object?>);
          break;
        case 'children':
          result.children.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(InspectorNode)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$InspectorDirectiveSerializer
    implements StructuredSerializer<InspectorDirective> {
  @override
  final Iterable<Type> types = const [InspectorDirective, _$InspectorDirective];
  @override
  final String wireName = 'InspectorDirective';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, InspectorDirective object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  InspectorDirective deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InspectorDirectiveBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$InspectorNode extends InspectorNode {
  @override
  final InspectorDirective? component;
  @override
  final BuiltList<InspectorDirective> directives;
  @override
  final BuiltList<InspectorNode> children;

  factory _$InspectorNode([void Function(InspectorNodeBuilder)? updates]) =>
      (new InspectorNodeBuilder()..update(updates))._build();

  _$InspectorNode._(
      {this.component, required this.directives, required this.children})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        directives, r'InspectorNode', 'directives');
    BuiltValueNullFieldError.checkNotNull(
        children, r'InspectorNode', 'children');
  }

  @override
  InspectorNode rebuild(void Function(InspectorNodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InspectorNodeBuilder toBuilder() => new InspectorNodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectorNode &&
        component == other.component &&
        directives == other.directives &&
        children == other.children;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, directives.hashCode);
    _$hash = $jc(_$hash, children.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InspectorNode')
          ..add('component', component)
          ..add('directives', directives)
          ..add('children', children))
        .toString();
  }
}

class InspectorNodeBuilder
    implements Builder<InspectorNode, InspectorNodeBuilder> {
  _$InspectorNode? _$v;

  InspectorDirectiveBuilder? _component;
  InspectorDirectiveBuilder get component =>
      _$this._component ??= new InspectorDirectiveBuilder();
  set component(InspectorDirectiveBuilder? component) =>
      _$this._component = component;

  ListBuilder<InspectorDirective>? _directives;
  ListBuilder<InspectorDirective> get directives =>
      _$this._directives ??= new ListBuilder<InspectorDirective>();
  set directives(ListBuilder<InspectorDirective>? directives) =>
      _$this._directives = directives;

  ListBuilder<InspectorNode>? _children;
  ListBuilder<InspectorNode> get children =>
      _$this._children ??= new ListBuilder<InspectorNode>();
  set children(ListBuilder<InspectorNode>? children) =>
      _$this._children = children;

  InspectorNodeBuilder();

  InspectorNodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _component = $v.component?.toBuilder();
      _directives = $v.directives.toBuilder();
      _children = $v.children.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InspectorNode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InspectorNode;
  }

  @override
  void update(void Function(InspectorNodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InspectorNode build() => _build();

  _$InspectorNode _build() {
    _$InspectorNode _$result;
    try {
      _$result = _$v ??
          new _$InspectorNode._(
              component: _component?.build(),
              directives: directives.build(),
              children: children.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'component';
        _component?.build();
        _$failedField = 'directives';
        directives.build();
        _$failedField = 'children';
        children.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InspectorNode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$InspectorDirective extends InspectorDirective {
  @override
  final String name;
  @override
  final int id;

  factory _$InspectorDirective(
          [void Function(InspectorDirectiveBuilder)? updates]) =>
      (new InspectorDirectiveBuilder()..update(updates))._build();

  _$InspectorDirective._({required this.name, required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'InspectorDirective', 'name');
    BuiltValueNullFieldError.checkNotNull(id, r'InspectorDirective', 'id');
  }

  @override
  InspectorDirective rebuild(
          void Function(InspectorDirectiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InspectorDirectiveBuilder toBuilder() =>
      new InspectorDirectiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectorDirective && name == other.name && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InspectorDirective')
          ..add('name', name)
          ..add('id', id))
        .toString();
  }
}

class InspectorDirectiveBuilder
    implements Builder<InspectorDirective, InspectorDirectiveBuilder> {
  _$InspectorDirective? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  InspectorDirectiveBuilder() {
    InspectorDirective._initialize(this);
  }

  InspectorDirectiveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InspectorDirective other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InspectorDirective;
  }

  @override
  void update(void Function(InspectorDirectiveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InspectorDirective build() => _build();

  _$InspectorDirective _build() {
    final _$result = _$v ??
        new _$InspectorDirective._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InspectorDirective', 'name'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'InspectorDirective', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

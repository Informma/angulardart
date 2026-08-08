/// The primary library for the [AngularDart web framework][AngularDart].
///
/// Import this library as follows:
///
/// ```dart
/// import 'package:angulardart/angulardart.dart';
/// ```
///
/// ## Getting Started
///
/// The fastest way to get started is with the [AngularDart CLI][cli]:
///
/// ```bash
/// dart pub global activate angulardart_cli
/// ngdart new my_app
/// cd my_app
/// dart pub get
/// dart run build_runner serve
/// ```
///
/// ## Minimal Example
///
/// ```dart
/// import 'package:angulardart/angulardart.dart';
///
/// @Component(
///   selector: 'my-app',
///   template: '<h1>Hello {{name}}!</h1>',
/// )
/// class AppComponent {
///   String name = 'World';
/// }
///
/// void main() => runApp(AppComponent, 'my-app');
/// ```
///
/// ## What's Included
///
/// This library exports the core AngularDart APIs:
///
/// - **Bootstrapping**: [runApp], [runAppAsync] for starting applications.
/// - **Components & Directives**: [Component], [Directive], [Pipe] annotations.
/// - **Dependency Injection**: [Injector], [Provider], [Module], and related
///   annotations ([Inject], [Optional], [Self], [Host], [SkipSelf]).
/// - **Lifecycle Hooks**: [OnInit], [OnDestroy], [OnChanges], [AfterChanges],
///   [AfterContentInit], [AfterContentChecked], [AfterViewInit],
///   [AfterViewChecked], [DoCheck].
/// - **Change Detection**: [ChangeDetectionStrategy], [ChangeDetectorRef].
/// - **Common Directives**: [NgIf], [NgFor], [NgSwitch], [NgClass], [NgStyle].
/// - **Common Pipes**: [DatePipe], [UpperCasePipe], [LowerCasePipe],
///   [SlicePipe], [AsyncPipe], and more.
/// - **Security**: [SafeHtml], [SafeUrl], [SafeStyle], [SafeResourceUrl].
/// - **DevTools**: [enableDevTools] for debugging support.
///
/// ## Documentation
///
/// - [AngularDart Guide][AngularDart guide] - Comprehensive documentation.
/// - [AngularDart Cheat Sheet][cheatsheet] - Quick reference.
/// - [API Reference](https://pub.dev/documentation/angulardart/latest/) -
///   This page.
///
/// [AngularDart]: https://angulardartreborn.com
/// [AngularDart guide]: https://angulardartreborn.com/guide
/// [cheatsheet]: https://angulardartreborn.com/cheatsheet
/// [cli]: https://pub.dev/packages/angulardart_cli
library angular;

export 'src/bootstrap/run.dart'
    show runApp, runAppAsync, runAppLegacy, runAppLegacyAsync, bootstrapStatic;
export 'src/common/directives.dart';
export 'src/common/pipes.dart';
export 'src/core/application_ref.dart' show ApplicationRef;
export 'src/core/application_tokens.dart' show APP_ID;
export 'src/core/change_detection.dart';
export 'src/core/exception_handler.dart' show ExceptionHandler;
export 'src/core/linker.dart';
export 'src/core/zone/ng_zone.dart' show NgZone, UncaughtError;
export 'src/devtools.dart' show enableDevTools, registerContentRoot;
export 'src/di/errors.dart' show InjectionError, NoProviderError;
export 'src/di/injector.dart' show Injector, InjectorFactory;
export 'src/di/injector/runtime.dart' show ReflectiveInjector;
export 'src/meta.dart'
    show
        AfterChanges,
        AfterContentChecked,
        AfterContentInit,
        AfterViewChecked,
        AfterViewInit,
        Attribute,
        ChangeDetectionStrategy,
        ChangeDetectorState,
        ClassProvider,
        Component,
        ContentChild,
        ContentChildren,
        Directive,
        DoCheck,
        ExistingProvider,
        FactoryProvider,
        GenerateInjector,
        Host,
        HostBinding,
        HostListener,
        Inject,
        Injectable,
        Input,
        Module,
        MultiToken,
        OnChanges,
        OnDestroy,
        OnInit,
        OpaqueToken,
        Optional,
        Output,
        Pipe,
        Provider,
        RenderMode,
        Self,
        SkipSelf,
        Typed,
        ValueProvider,
        ViewChild,
        ViewChildren,
        ViewEncapsulation,
        Visibility,
        noValueProvided,
        provide,
        visibleForTemplate;
export 'src/runtime/check_binding.dart' show debugCheckBindings;
export 'src/runtime/render_factory.dart'
    show RenderFactory, renderFactory;
export 'src/runtime/hydrate_render_factory.dart'
    show HydrateRenderFactory;
export 'src/runtime/server_render_node.dart' show ServerRenderNode;
export 'src/security/safe_html.dart'
    show SafeHtml, SafeStyle, SafeUrl, SafeResourceUrl;
// TODO(b/116697059): Move to a testonly=1 library.
export 'src/testability.dart' show Testability, TestabilityRegistry;

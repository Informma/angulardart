/// The primary library for the [AngularDart web framework][AngularDart].
///
/// Import this library as follows:
///
/// ```
/// import 'package:angulardart/angulardart.dart';
/// ```
///
/// For help using this library, see the AngularDart documentation:
///
/// * [AngularDart guide][]
/// * [AngularDart cheat sheet][cheatsheet]
///
/// [AngularDart]: https://angulardartreborn.com/angular
/// [AngularDart guide]: https://angulardartreborn.com/guide
/// [cheatsheet]: https://angulardartreborn.com/cheatsheet

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
export 'src/security/safe_html.dart'
    show SafeHtml, SafeStyle, SafeUrl, SafeResourceUrl;
// TODO(b/116697059): Move to a testonly=1 library.
export 'src/testability.dart' show Testability, TestabilityRegistry;

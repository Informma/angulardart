import 'package:angulardart_cli/src/templates.dart';
import 'package:mustache_template/mustache.dart';
import 'package:test/test.dart';

void main() {
  group('Templates.projectPubspec', () {
    test('contains angulardart with correct version constraint', () {
      expect(Templates.projectPubspec, contains("angulardart: '>="));
      expect(Templates.projectPubspec, contains('>=9.0.0 <10.0.0'));
    });

    test('contains build_runner with correct version constraint', () {
      expect(Templates.projectPubspec, contains("build_runner: '>="));
      expect(Templates.projectPubspec, contains('>=2.16.0 <3.0.0'));
    });

    test('contains build_web_compilers with correct version constraint', () {
      expect(
        Templates.projectPubspec,
        contains("build_web_compilers: '>="),
      );
      expect(Templates.projectPubspec, contains('>=4.8.0 <5.0.0'));
    });

    test('contains angulardart_test with correct version constraint', () {
      expect(
        Templates.projectPubspec,
        contains("angulardart_test: '>="),
      );
      expect(Templates.projectPubspec, contains('>=6.0.0 <7.0.0'));
    });

    test('contains lints with correct version constraint', () {
      expect(Templates.projectPubspec, contains("lints: '>="));
      expect(Templates.projectPubspec, contains('>=6.0.0 <7.0.0'));
    });

    test('contains test with correct version constraint', () {
      expect(Templates.projectPubspec, contains("test: '>="));
      expect(Templates.projectPubspec, contains('>=1.31.0 <2.0.0'));
    });

    test('uses wide version constraints (not caret syntax)', () {
      // Ensure no ^ syntax is used in dependency versions
      final lines = Templates.projectPubspec.split('\n');
      for (final line in lines) {
        if (line.contains(':') && !line.trim().startsWith('#')) {
          expect(
            line,
            isNot(contains('^')),
            reason: 'Line should use wide constraints not caret: $line',
          );
        }
      }
    });

    test('renders mustache placeholders correctly', () {
      final rendered = Templates.projectPubspec
          .replaceAll('{{name}}', 'my_app')
          .replaceAll('{{description}}', 'My App');
      expect(rendered, contains('name: my_app'));
      expect(rendered, contains('description: My App'));
    });

    test('does not contain old version ^8.1.6', () {
      expect(Templates.projectPubspec, isNot(contains('^8.1.6')));
    });

    test('does not contain old angulardart_test ^5.1.6', () {
      expect(Templates.projectPubspec, isNot(contains('^5.1.6')));
    });
  });

  group('Templates.projectPubspecSeo', () {
    test('contains all SEO dependencies with correct versions', () {
      expect(Templates.projectPubspecSeo, contains("angulardart: '>="));
      expect(
        Templates.projectPubspecSeo,
        contains("angulardart: '>=9.0.0 <10.0.0'"),
      );
    });

    test('contains angulardart_router dependency', () {
      expect(Templates.projectPubspecSeo, contains('angulardart_router:'));
      expect(
        Templates.projectPubspecSeo,
        contains('>=5.0.0 <6.0.0'),
      );
    });

    test('contains angulardart_seo dependency', () {
      expect(Templates.projectPubspecSeo, contains('angulardart_seo:'));
      expect(
        Templates.projectPubspecSeo,
        contains('>=1.0.0 <2.0.0'),
      );
    });

    test('contains angulardart_prerender dependency', () {
      expect(Templates.projectPubspecSeo, contains('angulardart_prerender:'));
      expect(
        Templates.projectPubspecSeo,
        contains('>=1.0.0 <2.0.0'),
      );
    });

    test('uses wide version constraints (not caret syntax)', () {
      final lines = Templates.projectPubspecSeo.split('\n');
      for (final line in lines) {
        if (line.contains(':') && !line.trim().startsWith('#')) {
          expect(
            line,
            isNot(contains('^')),
            reason: 'Line should use wide constraints not caret: $line',
          );
        }
      }
    });

    test('renders mustache placeholders correctly', () {
      final rendered = Templates.projectPubspecSeo
          .replaceAll('{{name}}', 'my_app')
          .replaceAll('{{description}}', 'My App');
      expect(rendered, contains('name: my_app'));
      expect(rendered, contains('description: My App'));
    });
  });

  group('Templates.projectMainDart', () {
    test('imports angulardart package', () {
      expect(Templates.projectMainDart,
          contains('package:angulardart/angulardart.dart'));
    });

    test('uses runApp with NgFactory', () {
      expect(Templates.projectMainDart, contains('runApp'));
      expect(Templates.projectMainDart, contains('NgFactory'));
    });

    test('renders mustache placeholders correctly', () {
      // Use mustache_template package for proper rendering
      final template = Template(
        Templates.projectMainDart,
        htmlEscapeValues: false,
      );
      final rendered = template.renderString({
        'name': 'my_app',
        'component': {
          'className': 'AppComponent',
          'targetName': 'app_component',
        },
      });
      expect(rendered, contains('package:my_app/app_component.template.dart'));
      expect(rendered, contains('AppComponentNgFactory'));
    });
  });

  group('Templates.projectMainDartSeo', () {
    test('imports angulardart package', () {
      expect(Templates.projectMainDartSeo,
          contains('package:angulardart/angulardart.dart'));
    });

    test('imports router package', () {
      expect(
        Templates.projectMainDartSeo,
        contains('package:angulardart_router/angulardart_router.dart'),
      );
    });

    test('imports seo package', () {
      expect(
        Templates.projectMainDartSeo,
        contains('package:angulardart_seo/angulardart_seo.dart'),
      );
    });

    test('provides SeoService and TitleService', () {
      expect(
          Templates.projectMainDartSeo, contains('ClassProvider(SeoService)'));
      expect(Templates.projectMainDartSeo,
          contains('ClassProvider(TitleService)'));
    });

    test('uses GenerateInjector annotation', () {
      expect(Templates.projectMainDartSeo, contains('@GenerateInjector(['));
      expect(Templates.projectMainDartSeo, contains('routerProviders'));
    });

    test('calls runApp with createInjector', () {
      expect(Templates.projectMainDartSeo,
          contains('createInjector: appInjector'));
    });
  });

  group('Templates.componentDart', () {
    test('imports angulardart package', () {
      expect(Templates.componentDart,
          contains('package:angulardart/angulardart.dart'));
    });

    test('uses @Component annotation', () {
      expect(Templates.componentDart, contains('@Component('));
    });

    test('renders mustache placeholders correctly', () {
      final template = Template(
        Templates.componentDart,
        htmlEscapeValues: false,
      );
      final rendered = template.renderString({
        'selector': 'my-component',
        'className': 'MyComponent',
        'targetName': 'my_component',
      });
      expect(rendered, contains("selector: 'my-component'"));
      expect(rendered, contains('class MyComponent'));
      expect(rendered, contains("'my_component.html'"));
    });
  });

  group('Templates.directiveDart', () {
    test('imports angulardart package', () {
      expect(Templates.directiveDart,
          contains('package:angulardart/angulardart.dart'));
    });

    test('uses @Directive annotation', () {
      expect(Templates.directiveDart, contains('@Directive('));
    });

    test('renders mustache placeholders correctly', () {
      final template = Template(
        Templates.directiveDart,
        htmlEscapeValues: false,
      );
      // Mustache doubles single brackets for attribute selectors: [myDir] → [[myDir]]
      final rendered = template.renderString({
        'selector': '[myDir]',
        'className': 'MyDirective',
        'targetName': 'my_directive',
      });
      expect(rendered, contains("selector: '[[myDir]]'"));
      expect(rendered, contains('class MyDirective'));
    });
  });

  group('Templates.pipeDart', () {
    test('imports angulardart package', () {
      expect(
          Templates.pipeDart, contains('package:angulardart/angulardart.dart'));
    });

    test('uses @Pipe annotation', () {
      expect(Templates.pipeDart, contains("@Pipe('"));
    });

    test('implements PipeTransform', () {
      expect(Templates.pipeDart, contains('implements PipeTransform'));
    });

    test('renders mustache placeholders correctly', () {
      final template = Template(
        Templates.pipeDart,
        htmlEscapeValues: false,
      );
      final rendered = template.renderString({'className': 'MyPipe'});
      expect(rendered, contains("@Pipe('MyPipe')"));
      expect(rendered, contains('class MyPipe'));
    });
  });

  group('Templates.serviceDart', () {
    test('imports angulardart package', () {
      expect(Templates.serviceDart,
          contains('package:angulardart/angulardart.dart'));
    });

    test('uses @Injectable annotation', () {
      expect(Templates.serviceDart, contains('@Injectable()'));
    });

    test('renders mustache placeholders correctly', () {
      final template = Template(
        Templates.serviceDart,
        htmlEscapeValues: false,
      );
      final rendered = template.renderString({'className': 'MyService'});
      expect(rendered, contains('class MyService'));
    });
  });

  group('Templates SEO templates', () {
    test('seoAppComponent imports router and angulardart', () {
      expect(Templates.seoAppComponent,
          contains('package:angulardart/angulardart.dart'));
      expect(Templates.seoAppComponent,
          contains('package:angulardart_router/angulardart_router.dart'));
    });

    test('seoHomeComponent imports seo package', () {
      expect(Templates.seoHomeComponent,
          contains('package:angulardart_seo/angulardart_seo.dart'));
    });

    test('seoAboutComponent imports seo package', () {
      expect(Templates.seoAboutComponent,
          contains('package:angulardart_seo/angulardart_seo.dart'));
    });

    test('seoHomeComponent uses SeoService', () {
      expect(Templates.seoHomeComponent, contains('final SeoService _seo'));
      expect(Templates.seoHomeComponent, contains('_seo.setPageSeo('));
    });

    test('seoAboutComponent uses SeoService', () {
      expect(Templates.seoAboutComponent, contains('final SeoService _seo'));
      expect(Templates.seoAboutComponent, contains('_seo.setPageSeo('));
    });

    test('seoAppComponentHtml uses routerLink directive', () {
      expect(Templates.seoAppComponentHtml, contains('[routerLink]'));
      expect(Templates.seoAppComponentHtml, contains('<router-outlet'));
    });
  });

  group('Templates.static files', () {
    test('projectAnalysisOptions includes lints recommended', () {
      expect(Templates.projectAnalysisOptions,
          contains('package:lints/recommended.yaml'));
    });

    test('projectBuildYaml configures build_web_compilers', () {
      expect(Templates.projectBuildYaml,
          contains('build_web_compilers|entrypoint'));
    });

    test('projectGitignore excludes expected files', () {
      expect(Templates.projectGitignore, contains('.dart_tool/'));
      expect(Templates.projectGitignore, contains('pubspec.lock'));
    });

    test('projectIndexHtml has proper structure', () {
      expect(Templates.projectIndexHtml, contains('<!DOCTYPE html>'));
      expect(Templates.projectIndexHtml, contains('meta name="viewport"'));
      expect(Templates.projectIndexHtml, contains('main.dart.js'));
    });

    test('projectPrerenderYaml has expected config', () {
      expect(Templates.projectPrerenderYaml, contains('routes:'));
      expect(Templates.projectPrerenderYaml, contains('timeout: 5000'));
      expect(Templates.projectPrerenderYaml,
          contains('wait_for_network_idle: true'));
      expect(
          Templates.projectPrerenderYaml, contains('generate_sitemap: true'));
      expect(Templates.projectPrerenderYaml, contains('base_url:'));
    });
  });

  group('Templates consistency', () {
    test('all pubspec templates use consistent SDK constraint', () {
      final sdkConstraint = "sdk: '>=3.0.0 <4.0.0'";
      expect(Templates.projectPubspec, contains(sdkConstraint));
      expect(Templates.projectPubspecSeo, contains(sdkConstraint));
    });

    test('all Dart templates import angulardart package', () {
      final dartTemplates = [
        Templates.componentDart,
        Templates.directiveDart,
        Templates.pipeDart,
        Templates.serviceDart,
        Templates.projectMainDart,
        Templates.seoAppComponent,
        Templates.seoHomeComponent,
        Templates.seoAboutComponent,
      ];
      for (final template in dartTemplates) {
        expect(
          template,
          contains('package:angulardart/angulardart.dart'),
          reason:
              'Template should import angulardart: ${template.substring(0, 50)}',
        );
      }
    });

    test(
        'SEO templates use consistent version constraints with non-SEO pubspec',
        () {
      // Both should use the same base dependencies (angulardart, build_runner, etc.)
      final baseDeps = [
        '>=9.0.0 <10.0.0', // angulardart
        '>=2.16.0 <3.0.0', // build_runner
        '>=4.8.0 <5.0.0', // build_web_compilers
        '>=6.0.0 <7.0.0', // angulardart_test
      ];
      for (final dep in baseDeps) {
        expect(Templates.projectPubspec, contains(dep),
            reason: 'Missing from base pubspec: $dep');
        expect(Templates.projectPubspecSeo, contains(dep),
            reason: 'Missing from SEO pubspec: $dep');
      }
    });
  });
}

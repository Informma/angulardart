import 'package:test/test.dart';
import 'package:angulardart_compiler/v1/angular_compiler.dart';

import '../../src/compile.dart';
import '../../src/resolve.dart';

void main() {
  Future<void> expectBuildError(String source, Object matcherOrString) async {
    final library = await resolveLibrary(source);
    try {
      final visitDirective = const DirectiveVisitor().visitDirective;
      library.definingCompilationUnit.classes.forEach(visitDirective);
      fail('Expected an error to be thrown');
    } catch (e) {
      expect(e.toString(), matcherOrString);
    }
  }

  test('should catch a @HostBinding on a private member', () async {
    await expectBuildError(
      '''
      class Comp {
        @HostBinding('attr.title')
        var _cantTouchThis;
      }
    ''',
      allOf(
        contains('@HostBinding must be on a public member'),
        contains('_cantTouchThis'),
      ),
    );
  });

  test('should catch a @HostListener on a private member', () async {
    await expectBuildError(
      '''
      class Comp {
        @HostListener('click')
        void _cantTouchThis() {}
      }
    ''',
      allOf(
        contains('@HostListener must be on a public member'),
        contains('_cantTouchThis'),
      ),
    );
  });

  test('should catch a @HostListener on a static method', () async {
    await expectBuildError(
      '''
      class Comp {
        @HostListener('click')
        static void onClick() {}
      }
    ''',
      allOf(
        contains('@HostListener must be on a non-static member'),
        contains('onClick'),
      ),
    );
  });
}

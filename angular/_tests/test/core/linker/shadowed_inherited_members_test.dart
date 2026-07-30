import 'package:test/test.dart';
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_test/angulardart_test.dart';

import 'shadowed_inherited_members_test.template.dart' as ng;

void main() {
  tearDown(disposeAnyRunningTest);

  test('should handle shadowed inherited members', () async {
    final testBed = NgTestBed(ng.createTestShadowedInheritedMembersFactory());
    final testFixture = await testBed.create();
    expect(testFixture.text, 'Hello world!');
  });
}

/// Shadows `AppView.rootEl`.
void rootEl() {}

@Component(
  selector: 'test',
  template: '''
    <div>Hello world!</div>
  ''',
)
class TestShadowedInheritedMembers {}

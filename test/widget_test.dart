import 'package:donemenu/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('DoneMenu initialization smoke test', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const DoneMenuApp());

    expect(find.text('DoneMenu Initialized'), findsOneWidget);
  });
}

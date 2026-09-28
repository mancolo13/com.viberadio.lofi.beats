import 'package:flutter_test/flutter_test.dart';
import 'package:app18/main.dart';

void main() {
  testWidgets('VibeRadio renders app correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const VibeRadioApp());
    expect(find.byType(VibeRadioApp), findsOneWidget);
  });
}

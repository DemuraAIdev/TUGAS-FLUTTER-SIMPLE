import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:tugas1/main.dart';

void main() {
  testWidgets('TugasHold widget test', (WidgetTester tester) async {
    // Build the TugasHold widget
    await tester.pumpWidget(const TugasHold());

    // Verify that the AppBar with the title 'Tugas Abdul Vaiz' is created
    expect(find.widgetWithText(AppBar, 'Tugas Abdul Vaiz'), findsOneWidget);

    // Verify that the text 'Soal 19' is present
  });
}

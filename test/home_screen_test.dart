// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test_project/solid_task_app.dart';

void main() {
  testWidgets('Home screen widget tests', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const SolidTaskApp());

    // Verify that default background color is white and text color - black.
    expect(
      (tester.firstWidget(find.byType(Container)) as Container).color,
      Colors.white,
    );
    expect(
      ((tester.firstWidget(find.byType(Text)) as Text).style)?.color,
      Colors.black,
    );

    // Tap the screen(Container) and trigger a frame.
    await tester.tap(find.byType(Container));
    await tester.pump();

    // Verify that the colors have changed.
    expect(
      (tester.firstWidget(find.byType(Container)) as Container).color,
      isNot(equals(Colors.white)),
    );
    expect(
      ((tester.firstWidget(find.byType(Text)) as Text).style)?.color,
      isNot(equals(Colors.black)),
    );
  });
}

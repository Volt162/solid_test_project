import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test_project/extensions/extensions.dart';

void main() {
  test('color.invert() should invert color', () {
    // Set and invert color.
    const Color color = Colors.white;
    final invertColor = color.invert();

    // Verify that the color is inverted(from white expect black).
    expect(invertColor, Colors.black);
  });
}

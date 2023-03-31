import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test_project/commons/utils.dart';

void main() {
  test('getRandomColor() should create different colors', () {
    // Generate two colors.
    final firstColor = Utils.getRandomColor();
    final secondColor = Utils.getRandomColor();

    // Verify that the colors not equals.
    expect(firstColor, isNot(equals(secondColor)));
  });
}

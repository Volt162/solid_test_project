import 'dart:math';
import 'package:flutter/material.dart';

/// The class contains helper methods.
abstract class Utils {
  /// Returns a randomly generated color.
  static Color getRandomColor() {
    final random = Random();
    final Color color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );

    return color;
  }
}

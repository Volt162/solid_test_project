import 'package:flutter/material.dart';

/// Color Extensions.
extension ColorExtension on Color {
  /// Returns inverted color.
  Color invert() {
    final Color invertColor = Color.fromRGBO(
      255 - red,
      255 - green,
      255 - blue,
      1,
    );

    return invertColor;
  }
}

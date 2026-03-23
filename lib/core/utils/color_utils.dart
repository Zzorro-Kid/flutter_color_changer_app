import 'dart:math';
import 'package:flutter/material.dart';

abstract final class ColorUtils {
  static final Random _random = Random();

  static Color generateRandomColor() {
    final r = _random.nextInt(256);
    final g = _random.nextInt(256);
    final b = _random.nextInt(256);
    return Color.fromRGBO(r, g, b, 1.0);
  }

  static Color getTextContrastColor(Color background) {
    final luminance = background.computeLuminance();
    return luminance > 0.5 ? Colors.black : Colors.white;
  }
}

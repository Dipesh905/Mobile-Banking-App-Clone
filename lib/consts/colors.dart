import 'package:flutter/material.dart';

class AppColor {
  static Gradient gradientColor = LinearGradient(colors: [
    Colors.red.shade800,
    Colors.red.shade500,
    Colors.brown.shade400,
    Colors.blue.shade400,
    Colors.blue.shade600,
    Colors.blue.shade900,
  ], begin: Alignment.topLeft, end: Alignment.bottomRight);

  static Gradient buttonGradientColor = LinearGradient(colors: [
    Colors.red.shade500,
    Colors.red.shade600,
    Colors.red.shade800,
  ]);

  static MaterialColor materialBlueColor = Colors.blue;
}

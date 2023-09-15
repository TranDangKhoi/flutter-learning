import "package:flutter/material.dart";

class ColorPallete {
  static const Color primaryColor = Color(0xff6155CC);
  static const Color secondColor = Color(0xffF5F5F5);
  static const Color yellowColor = Color(0xffFE9C5E);

  static const Color dividerColor = Color(0xffE0E0E0);
  static const Color textColor = Color(0xff212121);
  static const Color subtitleColor = Color(0xff757575);
  static const Color backgroundScaffoldColor = Color(0XFFFF2F2F2);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        ColorPallete.primaryColor,
        ColorPallete.yellowColor,
      ]);
}

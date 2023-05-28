import 'package:flutter/material.dart';

const _defaultFontFamily = 'SF-Pro-Rounded';

class Themes {
  static ThemeData appTheme(
    BuildContext context,
  ) {
    return ThemeData(
      fontFamily: _defaultFontFamily,
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 96, fontWeight: FontWeight.w100),
        displayMedium: TextStyle(fontSize: 55, fontWeight: FontWeight.w100),
        displaySmall: TextStyle(fontSize: 48, fontWeight: FontWeight.w500),
        headlineMedium: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
        headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        titleSmall: TextStyle(fontWeight: FontWeight.normal),
      ).apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
    );
  }
}

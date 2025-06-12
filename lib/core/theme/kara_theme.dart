import 'package:flutter/material.dart';

import 'kara_colors.dart';

class KaraTheme {
  static ThemeData get theme {
    return ThemeData(
      splashColor: KaraColors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSeed(
        seedColor: KaraColors.blue,
        primary: KaraColors.white,
        secondary: KaraColors.blue,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: KaraColors.blue, width: 1),
        ),
        labelStyle: TextStyle(color: KaraColors.black),
      ),
    );
  }
}
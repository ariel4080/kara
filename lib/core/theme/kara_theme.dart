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
        tertiary: KaraColors.black,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: KaraColors.blue, fontSize: 32, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
        labelMedium: TextStyle(color: KaraColors.grey, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'Roboto'),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: KaraColors.blue, width: 1),
        ),
        labelStyle: TextStyle(color: KaraColors.black),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: KaraColors.blue,
        selectionHandleColor: KaraColors.blue,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: KaraColors.blue,
        ),
      ),
    );
  }
}
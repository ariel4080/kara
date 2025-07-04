import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      splashColor: AppColors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.blue,
        primary: AppColors.white,
        secondary: AppColors.blue,
        tertiary: AppColors.black,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: AppColors.blue,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto',
        ),
        labelMedium: TextStyle(
          color: AppColors.greyDark,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto',
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.blue, width: 1),
        ),
        labelStyle: TextStyle(color: AppColors.black),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.blue,
        selectionHandleColor: AppColors.blue,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: AppColors.blue),
      ),
    );
  }
}

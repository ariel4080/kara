import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.blue,
        primary: AppColors.white,
        secondary: AppColors.blue,
        tertiary: AppColors.black,
        surface: AppColors.greyLight,
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
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.fixed,
        backgroundColor: AppColors.red,
        actionTextColor: AppColors.white,
        contentTextStyle: TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto',
        ),
        showCloseIcon: true,
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: AppColors.blue,
        textColor: AppColors.black,
        contentPadding: EdgeInsets.symmetric(horizontal: 6),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeData {
  static ThemeData lightThemeData = ThemeData(
    // primarySwatch:
    //     MaterialColor(AppColors.primaryColor.value, AppColors.colorSwatch),
    primaryColor: AppColors.primaryColor,
    appBarTheme:const AppBarTheme(
      titleTextStyle: TextStyle(fontSize: 20,color: Colors.black),
      backgroundColor:Colors.white,
      elevation:5,
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: AppColors.primaryColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white)),

    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.grey),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
    ),
    textTheme:  const TextTheme(
      titleLarge: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),

      titleSmall: TextStyle(
          fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),
    ),

  );
}

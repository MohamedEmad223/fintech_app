import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppLightTheme {
  ///ToDo : Change Later
  ///samples
  static AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.whiteColor,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      );

  static ChipThemeData chipThemeData = ChipThemeData(
    backgroundColor: AppColors.greyLightColor,
    disabledColor: AppColors.greyLightColor,
    selectedColor: AppColors.primary,
    secondarySelectedColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    labelStyle: const TextStyle(
      color: AppColors.blackColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    secondaryLabelStyle: const TextStyle(
      color: AppColors.whiteColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    brightness: Brightness.light,
  );

  static ThemeData mainThemeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.whiteColor,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    fontFamily: "Lato",
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    ),
  );
}

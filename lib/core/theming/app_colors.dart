import 'package:flutter/material.dart';

abstract class AppColors {
  static const whiteColor = Color(0xFFFFFFFF);
  static const blackColor = Color(0xFF000000);

  // Market Screen Colors
  static const background = Color(0xFFF8F9FC);
  static const darkBlue = Color(0xFF1A1F3D); // For titles
  static const greyText = Color(0xFF808080);
  static const lightGrey = Color(0xFFF2F2F2); // For search bar/chips
  static const greenSuccess = Color(0xFF21BF73);
  static const redError = Color(0xFFD90429);
  static const chipSelected = Color(0xFF1A1F3D);
  static const chipUnselected = Color(0xFFFFFFFF);

  ///Initial now
  static const primary = Color(0xFF1D3A70);
  static const secondary = Color(0xFFF56C2A);
  static const blue = Color(0xff4766F9);

  // Portfolio Colors
  // Gradient colors for portfolio card
  static const portfolioGradientStart = Color(0xFF4A5F8C);
  static const portfolioGradientEnd = Color(0xFF2E4A6F);

  // Chart colors
  static const chartCyan = Color(0xFF00D9FF);
  static const chartPurple = Color(0xFF9D6CFF);
  static const chartCoral = Color(0xFFFF928A);

  // Status colors
  static const successGreen = Color(0xFF00C853);
  static const errorRed = Color(0xFFFF5252);

  // Background colors
  static const backgroundColor = Color(0xFFF5F8FE);
  static const cardBackground = Color(0xFFFFFFFF);

  // Text colors
  static const textPrimary = Color(0xFF1A1A1A);
  static const textSecondary = Color(0xFF757575);
  static const textTertiary = Color(0xFF949494);

  // Bitcoin color
  static const bitcoinOrange = Color(0xFFF7931A);
}

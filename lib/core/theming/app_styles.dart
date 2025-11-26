import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/font_text.dart';
import 'package:fintech_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle font32WhiteBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font14WhiteMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font20PrimaryBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primary,
    fontFamily: FontText.fontName,
  );

  static TextStyle font16PrimaryBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primary,
    fontFamily: FontText.fontName,
  );

  static TextStyle font16BlackBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
    fontFamily: FontText.fontName,
  );

  static TextStyle font24PrimaryBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primary,
    fontFamily: FontText.fontName,
  );

  static TextStyle font16PrimarySemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.primary,
    fontFamily: FontText.fontName,
  );
  static TextStyle font14BlackMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    fontFamily: FontText.fontName,
  );

  static TextStyle font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.textTertiary,
    fontFamily: FontText.fontName,
  );

  static TextStyle font20grayebold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.cardBackground,
    fontFamily: FontText.fontName,
  );

  static TextStyle font28WhiteMedium = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.cardBackground,
    fontFamily: FontText.fontName,
  );

  static TextStyle font12FailureRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.errorRed,
    fontFamily: FontText.fontName,
  );

  static TextStyle font12SuccessRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.successGreen,
    fontFamily: FontText.fontName,
  );

  static TextStyle font14OrangeMedium = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.bitcoinOrange,
  );

  static TextStyle font12RedMedium = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.errorRed,
  );

  static TextStyle font20BlackPrimary = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primary,
    fontFamily: FontText.fontName,
  );

  static TextStyle font24PrimaryLatoBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primary,
    fontFamily: FontText.fontName,
  );

  static TextStyle font16PrimaryLatoBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primary,
    fontFamily: FontText.fontName,
  );
}

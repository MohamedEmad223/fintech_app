import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';
import 'font_weight_helper.dart';

class AppStyles {
  /// Note
  /// when Using TextStyle Don't add colors and instead use copy with
  /// Example:
  // static TextStyle font16BlackMedium = TextStyle(
  //   fontSize: 16.sp,
  //   color: AppColors.blackColor,
  //   fontWeight: FontWeightHelper.medium,
  // );
  static TextStyle font24DarkBlueBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font16GreyMedium = TextStyle(
    fontSize: 16.sp,
    color: AppColors.greyText,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font14DarkBlueBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.greyText,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16DarkBlueBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font12GreenMedium = TextStyle(
    fontSize: 12.sp,
    color: AppColors.greenSuccess,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font12RedMedium = TextStyle(
    fontSize: 12.sp,
    color: AppColors.redError,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font14WhiteMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
}

import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildHeaderOfAuth extends StatelessWidget {
  const BuildHeaderOfAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Create Your Account',
          style: AppStyles.font28BlackBold,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 12.h),
        Text(
          'Sign up to enjoy the best managing\nexperience!',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.greyText,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
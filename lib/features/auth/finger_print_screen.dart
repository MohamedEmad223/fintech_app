import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/features/auth/widgets/positioned_decoration_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FingerPrintScreen extends StatelessWidget {
  const FingerPrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          PositionedDecorationCircle(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Touch ID sensor to verify\nyourself',
                    style: AppStyles.font28BlackBold,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 80.h),
                  SvgPicture.asset(
                    AppAssets.fingerprintSvg,
                    width: 120.w,
                    height: 120.h,
                  ),
                  SizedBox(height: 80.h),
                  Text(
                    'Please verify your identity using touch\nID and it will proceed automatically.',
                    style: AppStyles.font16GreyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

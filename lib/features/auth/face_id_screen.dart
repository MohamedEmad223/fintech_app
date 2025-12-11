import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FaceIdScreen extends StatelessWidget {
  const FaceIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 30.h, left: 30.h, top: 120.w),
          child: Column(
            children: [
              SvgPicture.asset(AppAssets.faceSvg),
              SizedBox(height: 200.h),
              Text(
                'Please wait until your scanning is complete',
                style: AppStyles.font28PrimaryBold,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

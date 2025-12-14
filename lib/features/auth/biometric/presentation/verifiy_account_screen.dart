import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/core/widgets/custom_button.dart';
import 'package:fintech_app/features/auth/widgets/build_header_of_auth.dart';
import 'package:fintech_app/features/auth/widgets/positioned_decoration_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifiyAccountScreen extends StatelessWidget {
  const VerifiyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          PositionedDecorationCircle(),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 120.h),
                    SvgPicture.asset(AppAssets.rightSvg),
                    SizedBox(height: 80.h),
                    BuildHeaderOfAuth(title: 'You’re verified'),
                    SizedBox(height: 20.h),
                    Text(
                      'You have been verified your information completely. Let’s make transactions!',
                      style: AppStyles.font18BlackRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 60.h),
                    CustomButton(onPressed: () {}, text: 'Continue To Home'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

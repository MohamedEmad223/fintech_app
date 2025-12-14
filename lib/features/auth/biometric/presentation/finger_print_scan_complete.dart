import 'package:fintech_app/core/extensions/navigation_extension.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FingerPrintScanComplete extends StatelessWidget {
  const FingerPrintScanComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 30.h, left: 30.h, top: 120.w),
          child: Column(
            children: [
              SvgPicture.asset(AppAssets.rightSvg),
              SizedBox(height: 200.h),
              Text(
                'Your scanning is complete',
                style: AppStyles.font28PrimaryBold,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              Text(
                'you will be able to sign in by using fingerprint',
                style: AppStyles.font16GreyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              CustomButton(
                text: 'Continue',
                onPressed: () {
                  context.pushNameAndRemoveUntil(
                    Routes.setFaceIdOrSkipScreen,
                    predicate: (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

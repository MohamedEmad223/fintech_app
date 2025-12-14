import 'package:fintech_app/core/extensions/navigation_extension.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/core/widgets/custom_button.dart';
import 'package:fintech_app/features/auth/widgets/positioned_decoration_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SetFaceIdOrSkipScreen extends StatelessWidget {
  const SetFaceIdOrSkipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          const PositionedDecorationCircle(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  SizedBox(height: 120.h),
                  Text(
                    'Set Your Face ID',
                    style: AppStyles.font28PrimaryBold,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Add your face ID to make your account \n more secure.',
                    style: AppStyles.font16GreyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Container(
                    width: 200.w,
                    height: 200.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: 0.1),
                          spreadRadius: 5,
                          blurRadius: 20,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppAssets.faceSvg,
                          width: 80.w,
                          height: 80.w,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Face ID',
                          style: AppStyles.font16PrimaryBold.copyWith(
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: 'Skip',
                          isFilled: false,
                          onPressed: () {
                            context.pushNameAndRemoveUntil(
                              Routes.loginScreen,
                              predicate: (route) => false,
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Expanded(
                        child: CustomButton(
                          text: 'continue',
                          onPressed: () {
                            context.pushNameAndRemoveUntil(
                              Routes.faceIdScreen,
                              predicate: (route) => false,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

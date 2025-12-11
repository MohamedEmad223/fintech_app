import 'package:fintech_app/features/auth/widgets/already_have_an_account_widget.dart';
import 'package:fintech_app/features/auth/widgets/build_form_feild_register_body.dart';
import 'package:fintech_app/features/auth/widgets/build_header_of_auth.dart';
import 'package:fintech_app/features/auth/widgets/positioned_decoration_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theming/app_colors.dart';
import '../../core/widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(height: 40.h),
                    BuildHeaderOfAuth(),
                    SizedBox(height: 40.h),
                    BuildFormFeildRegisterBody(),
                    SizedBox(height: 32.h),
                    CustomButton(
                      text: 'Register',
                      onPressed: () {},
                      filledColor: AppColors.primary,
                      height: 56.h,
                      radius: 28.r,
                    ),
                    SizedBox(height: 24.h),
                    AlreadyHaveAnAccountWidget(),
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

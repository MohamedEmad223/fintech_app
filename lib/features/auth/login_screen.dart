import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/widgets/custom_button.dart';
import 'package:fintech_app/features/auth/widgets/build_form_feild_login_body.dart';
import 'package:fintech_app/features/auth/widgets/build_header_of_auth.dart';
import 'package:fintech_app/features/auth/widgets/do_not_have_an_account.dart';
import 'package:fintech_app/features/auth/widgets/finger_print_and_face_id_widget.dart';
import 'package:fintech_app/features/auth/widgets/or_login_with_widget.dart';
import 'package:fintech_app/features/auth/widgets/positioned_decoration_circle.dart';
import 'package:fintech_app/features/auth/widgets/remember_me_and_forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    BuildHeaderOfAuth(
                      title: 'Login To Your Account',
                      subtitle: 'Welcome back you\nve been missed!',
                    ),
                    SizedBox(height: 40.h),
                    BuildFormFeildLoginBody(),
                    SizedBox(height: 16.h),
                    RememberMeAndForgetPassword(),
                    SizedBox(height: 32.h),
                    CustomButton(
                      text: 'Login',
                      onPressed: () {},
                      filledColor: AppColors.primary,
                      height: 56.h,
                      radius: 28.r,
                    ),
                    SizedBox(height: 40.h),
                    OrLoginWithWidget(),
                    SizedBox(height: 25.h),
                    FingerPrintAndFaceIdWidget(
                      fingerprintOnTap: () {},
                      faceIdOnTap: () {},
                    ),
                    SizedBox(height: 25.h),
                    DoNotHaveAnAccountWidget(onTap: () {}),
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

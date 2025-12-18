import 'package:fintech_app/core/extensions/navigation_extension.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseAuthScreen extends StatelessWidget {
  const ChooseAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(height: 80.h),
                Image.asset(AppAssets.authChooseScreen),
                SizedBox(height: 30.h),
                Text(
                  'Get Started Now!',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50.h),
                CustomButton(
                  text: 'Login',
                  onPressed: () {
                    context.pushNameAndRemoveUntil(
                      Routes.loginScreen,
                      predicate: (route) => false,
                    );
                  },
                ),
                SizedBox(height: 20.h),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {
                    context.pushNameAndRemoveUntil(
                      Routes.registerScreen,
                      predicate: (route) => false,
                    );
                  },
                  isFilled: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

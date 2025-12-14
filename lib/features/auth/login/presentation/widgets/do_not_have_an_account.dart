import 'package:fintech_app/core/extensions/navigation_extension.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoNotHaveAnAccountWidget extends StatelessWidget {
  const DoNotHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: AppStyles.font14GreyTextMedium,
        ),
        SizedBox(width: 8.w),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.registerScreen);
          },
          child: Text('Sign Up', style: AppStyles.font14PrimaryMedium),
        ),
      ],
    );
  }
}
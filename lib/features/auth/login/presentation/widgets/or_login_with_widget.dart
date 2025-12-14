import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrLoginWithWidget extends StatelessWidget {
  const OrLoginWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.greyText, thickness: 1)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text('Or login with', style: AppStyles.font12PrimaryMedium),
        ),
        Expanded(child: Divider(color: AppColors.greyText, thickness: 1)),
      ],
    );
  }
}

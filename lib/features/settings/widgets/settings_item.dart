import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.primary,
            child: Icon(icon, color: AppColors.whiteColor),
          ),
          title: Text(title, style: AppStyles.font16PrimaryMedium),
          trailing: SvgPicture.asset(AppAssets.arrow, width: 20.w, height: 20.h),
          onTap: onTap,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Divider(height: 1.h, color: AppColors.titleGray ),
        ),
      ],
    );
  }
}

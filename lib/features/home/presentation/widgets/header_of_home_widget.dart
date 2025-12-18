import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HeaderOfHomeWidget extends StatelessWidget {
  final String name;

  const HeaderOfHomeWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 18.r,
              backgroundImage: AssetImage(AppAssets.personImage),
            ),
            SizedBox(width: 8.w),
            Text("Hi, $name 👋", style: AppStyles.font18BlackPrimary),
          ],
        ),
        SvgPicture.asset(AppAssets.notificationSvg),
      ],
    );
  }
}

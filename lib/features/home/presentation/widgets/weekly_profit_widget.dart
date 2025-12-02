import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeekleyProfitWidget extends StatelessWidget {
  const WeekleyProfitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Weekly Profit:', style: AppStyles.font14regularWhite),
        SizedBox(width: 8.w),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.09),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('2.35%', style: AppStyles.font14regularWhite),
              SizedBox(width: 4.w),
              Icon(Icons.arrow_drop_up, color: Colors.white, size: 20.r),
            ],
          ),
        ),
      ],
    );
  }
}

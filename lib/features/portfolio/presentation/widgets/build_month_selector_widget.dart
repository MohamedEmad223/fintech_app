import 'package:easy_localization/easy_localization.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildMonthSelectorWidget extends StatelessWidget {
  const BuildMonthSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final months = ['Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr'];

    final now = DateTime.now();
    final currentMonth = DateFormat('MMM').format(now);
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: months.length,
        itemBuilder: (context, index) {
          final month = months[index];
          final isSelected = month == currentMonth;

          return Container(
            margin: EdgeInsets.only(right: 12.w),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: isSelected ? Colors.white : AppColors.backgroundColor,
              ),
            ),
            child: Center(
              child: Text(
                month,
                style: AppStyles.font14BlackMedium.copyWith(
                  color: isSelected ? AppColors.blue : AppColors.textSecondary,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

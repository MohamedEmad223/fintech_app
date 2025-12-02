import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/features/home/data/trending_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TrendingNow extends StatelessWidget {
  final TrendingModel item;

  const TrendingNow({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 192.w,
      height: 120.h,
      padding: EdgeInsets.all(19.w),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(item.name, style: AppStyles.font16PrimaryBold),
              Spacer(),
              SvgPicture.asset(item.icon),
            ],
          ),

          SizedBox(height: 5.h),

          Text(item.symbol, style: AppStyles.font14PrimaryRegular),

          SizedBox(height: 5.h),

          Row(
            children: [
              Text(item.value, style: AppStyles.font16PrimaryBold),
              Spacer(),
              Text(item.percent, style: AppStyles.font14mediumPrimary),
              Icon(Icons.arrow_drop_up, size: 25.sp, color: AppColors.blue),
            ],
          ),
        ],
      ),
    );
  }
}

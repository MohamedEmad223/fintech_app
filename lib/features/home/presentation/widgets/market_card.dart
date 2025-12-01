import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/features/home/data/card_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarketCard extends StatelessWidget {
  final CardItemModel item;

  const MarketCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(item.title, style: AppStyles.font16mediumPrimary),
          SizedBox(height: 4.h),
          Text(item.value, style: AppStyles.font16PrimaryBold),
          if (item.percent != null) ...[
            SizedBox(height: 4.h),
            Expanded(
              child: Row(
                children: [
                  Text(item.percent!, style: AppStyles.font14mediumPrimary),
                  SizedBox(width: 4.w),
                  Icon(Icons.arrow_drop_up, size: 25.sp, color: AppColors.blue),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';

class FeeInfoCard extends StatelessWidget {
  final double feePercentage;
  final double feeAmount;
  final String currency;

  const FeeInfoCard({
    super.key,
    required this.feePercentage,
    required this.feeAmount,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Container(
            width: 48.w,
            height: 48.w,
            decoration: BoxDecoration(
              color: AppColors.secondary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              Icons.attach_money,
              color: AppColors.secondary,
              size: 24.sp,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Exchange fee',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.greyText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  '${feePercentage.toStringAsFixed(2)}%',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.darkBlue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '\$${feeAmount.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 20.sp,
              color: AppColors.darkBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

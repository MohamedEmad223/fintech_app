import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortfolioCardWidget extends StatelessWidget {
  final String totalValue;
  final double percentageChange;
  final double dollarChange;
  final List<Color>? gradientColors;

  const PortfolioCardWidget({
    super.key,
    required this.totalValue,
    required this.percentageChange,
    required this.dollarChange,
    this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    final colors =
        gradientColors ??
        [AppColors.portfolioGradientStart, AppColors.portfolioGradientEnd];

    final isPositive = percentageChange >= 0;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Value',
            style: AppStyles.font14WhiteMedium.copyWith(
              color: AppColors.whiteColor.withValues(alpha: 0.8),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            totalValue,
            style: AppStyles.font32WhiteBold.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                '${isPositive ? '+' : ''}${percentageChange.toStringAsFixed(1)}%',
                style: AppStyles.font14WhiteMedium.copyWith(
                  color: isPositive
                      ? AppColors.successGreen
                      : AppColors.errorRed,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                '(\$${dollarChange.toStringAsFixed(2)})',
                style: AppStyles.font14WhiteMedium.copyWith(
                  color: AppColors.whiteColor.withValues(alpha: 0.8),
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                'Today',
                style: AppStyles.font14WhiteMedium.copyWith(
                  color: AppColors.whiteColor.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

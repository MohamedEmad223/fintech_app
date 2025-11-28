import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HoldingItemWidget extends StatelessWidget {
  final String icon;
  final String name;
  final String symbol;
  final String amount;
  final String dollarValue;
  final String portfolioPercentage;
  final double priceChange;
  final double percentageChange;

  const HoldingItemWidget({
    super.key,
    required this.icon,
    required this.name,
    required this.symbol,
    required this.amount,
    required this.dollarValue,
    required this.portfolioPercentage,
    required this.priceChange,
    required this.percentageChange,
  });

  @override
  Widget build(BuildContext context) {
    final isPositive = priceChange >= 0;
    return Container(
      padding: EdgeInsets.all(20.w),
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 38.w,
                height: 38.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: SvgPicture.asset(icon, fit: BoxFit.scaleDown),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: AppStyles.font16BlackBold),
                    SizedBox(height: 2.h),
                    Text(symbol, style: AppStyles.font12GreyRegular),
                    SizedBox(height: 25.h),
                    Text(amount, style: AppStyles.font16PrimaryBold),
                    Text(dollarValue, style: AppStyles.font14OrangeMedium),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    portfolioPercentage,
                    style: AppStyles.font20BlackPrimary,
                  ),
                  SizedBox(height: 38.h),
                  Text(
                    '${isPositive ? '+' : ''}\$${priceChange.toStringAsFixed(2)}',
                    style: isPositive
                        ? AppStyles.font12SuccessRegular
                        : AppStyles.font12RedMedium,
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    '${isPositive ? '+' : ''}${percentageChange.toStringAsFixed(2)}%',
                    style: AppStyles.font12GreyRegular.copyWith(
                      color: isPositive
                          ? AppColors.successGreen
                          : AppColors.errorRed,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

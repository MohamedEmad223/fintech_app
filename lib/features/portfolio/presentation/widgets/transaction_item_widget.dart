import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

enum TransactionType { buy, sell }

class TransactionItemWidget extends StatelessWidget {
  final TransactionType type;
  final String description;
  final String timeAgo;
  final String amount;
  final String dollarValue;

  const TransactionItemWidget({
    super.key,
    required this.type,
    required this.description,
    required this.timeAgo,
    required this.amount,
    required this.dollarValue,
  });

  @override
  Widget build(BuildContext context) {
    final isBuy = type == TransactionType.buy;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              color: isBuy
                  ? AppColors.successGreen.withAlpha(10)
                  : AppColors.errorRed.withAlpha(10),
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: CircleAvatar(
              radius: 30.r,
              backgroundColor: AppColors.backgroundColor,
              child: SvgPicture.asset(
                isBuy ? AppAssets.successArrowSvg : AppAssets.faliurArrowSvg,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(description, style: AppStyles.font16PrimaryLatoBold),
                SizedBox(height: 2.h),
                Text(timeAgo, style: AppStyles.font12GreyRegular),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(amount, style: AppStyles.font16PrimaryLatoBold),
              SizedBox(height: 2.h),
              Text(
                dollarValue,
                style: isBuy
                    ? AppStyles.font12SuccessRegular
                    : AppStyles.font12FailureRegular,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/features/home/data/top_gainer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TopGainerCard extends StatelessWidget {
  const TopGainerCard({super.key, required this.topGainerModel});

  final TopGainerModel topGainerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 10.h,
        bottom: 10.h,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.r,
            backgroundColor: AppColors.backgroundColor,
            child: SvgPicture.asset('assets/svgs/bitcoin.svg'),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          topGainerModel.name,
                          style: AppStyles.font16PrimaryBold,
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          topGainerModel.symbol,
                          style: AppStyles.font14PrimaryRegular,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          topGainerModel.value,
                          style: AppStyles.font14PrimaryMedium,
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          topGainerModel.percent,
                          style: AppStyles.font12SuccessRegular,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

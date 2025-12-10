import 'package:fintech_app/core/helpers/number_formatter.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/features/home/domain/entity/home_coin_entity.dart';
import 'package:fintech_app/features/home/presentation/widgets/weekly_profit_widget.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/positioned_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTotalValueCard extends StatelessWidget {
  const HomeTotalValueCard({super.key, required this.items});

  final List<HomeCoinEntity> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(maxWidth: 600),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Stack(
        children: [
          PositionedContainerWidget(
            right: -80,
            top: -80,
            width: 180,
            height: 180,
          ),
          PositionedContainerWidget(
            right: -60,
            top: -60,
            width: 140,
            height: 140,
          ),
          PositionedContainerWidget(
            right: -40,
            top: -40,
            width: 100,
            height: 100,
          ),
          PositionedContainerWidget(
            left: -80,
            bottom: -80,
            width: 180,
            height: 180,
          ),
          PositionedContainerWidget(
            left: -80,
            bottom: -80,
            width: 180,
            height: 180,
          ),
          PositionedContainerWidget(
            left: -60,
            bottom: -60,
            width: 140,
            height: 140,
          ),
          PositionedContainerWidget(
            left: -40,
            bottom: -40,
            width: 100,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Current Balance', style: AppStyles.font20grayebold),
                SizedBox(height: 16.h),
                Text(
                  '\$${NumberFormatter.formatBigNumber(items.first.marketCap!)}',
                  style: AppStyles.font28WhiteMedium,
                ),
                SizedBox(height: 16.h),
                WeekleyProfitWidget(
                  profit: items.first.priceChangePercentage24h.toString(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

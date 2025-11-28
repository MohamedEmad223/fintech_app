import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/extensions/navigation_extension.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/fancy_network_image.dart';
import '../../domain/entity/market_coin_entity.dart';

class CryptoListItem extends StatelessWidget {
  final MarketCoinEntity coin;
  final bool isPositive;

  const CryptoListItem({
    super.key,
    required this.coin,
    required this.isPositive,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          Routes.coinDetailsScreen,
          arguments: {'coinId': coin.id},
        );
      },
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: FancyNetworkImage(
                imagePath: coin.image,
                width: 48.w,
                height: 48.h,
                borderRadiusGeometry: BorderRadius.circular(24.r),
              ),
            ),
            horizontalSpace(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coin.name, style: AppStyles.font16DarkBlueBold),
                  verticalSpace(4),
                  Text(coin.symbol, style: AppStyles.font14GreyRegular),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  coin.currentPrice.toString(),
                  style: AppStyles.font16DarkBlueBold,
                ),
                verticalSpace(4),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: isPositive
                        ? AppColors.greenSuccess
                        : AppColors.redError,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        isPositive ? Icons.arrow_outward : Icons.arrow_downward,
                        color: AppColors.whiteColor,
                        size: 12.sp,
                      ),
                      horizontalSpace(4),
                      Text(
                        coin.priceChangePercentage24h.toString(),
                        style: AppStyles.font12GreenMedium.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

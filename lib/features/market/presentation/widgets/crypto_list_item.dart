import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/fancy_network_image.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/extensions/navigation_extension.dart';

class CryptoListItem extends StatelessWidget {
  final String name;
  final String symbol; // e.g., "Rank #1" or ticker
  final String price;
  final String change;
  final bool isPositive;
  final String iconUrl;

  const CryptoListItem({
    super.key,
    required this.name,
    required this.symbol,
    required this.price,
    required this.change,
    required this.isPositive,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.coinDetailsScreen);
      },
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
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
                imagePath: iconUrl,
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
                  Text(name, style: AppStyles.font16DarkBlueBold),
                  verticalSpace(4),
                  Text(symbol, style: AppStyles.font14GreyRegular),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(price, style: AppStyles.font16DarkBlueBold),
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
                        change,
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

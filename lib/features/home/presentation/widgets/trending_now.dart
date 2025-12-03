import 'package:cached_network_image/cached_network_image.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/features/home/domain/entity/trending_coin_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingNow extends StatelessWidget {
  const TrendingNow({super.key, required this.item});
  final TrendingCoinEntity item;

  String formatNumber(double value) {
    List<String> parts = value.toString().split('.');

    String before = parts[0];
    String after = parts.length > 1 ? parts[1] : "0";

    if (before.length > 2) {
      before = before.substring(0, 2);
    }

    if (after.length > 2) {
      after = after.substring(0, 2);
    }

    return "$before.$after";
  }

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
              Expanded(
                child: Text(
                  item.name,
                  style: AppStyles.font16PrimaryBold,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ),
              Spacer(),
              CachedNetworkImage(
                imageUrl: item.imageUrl,
                width: 36.w,
                height: 36.h,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ],
          ),

          SizedBox(height: 5.h),

          Text(
            item.symbol,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            softWrap: false,
            style: AppStyles.font14PrimaryRegular,
          ),

          SizedBox(height: 5.h),

          Row(
            children: [
              Text(
                formatNumber(item.price),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: AppStyles.font16PrimaryBold,
              ),
              Spacer(),
              Text(
                formatNumber(item.priceChangePercentage24h),
                style: AppStyles.font14mediumPrimary,
              ),
              Icon(Icons.arrow_drop_up, size: 25.sp, color: AppColors.blue),
            ],
          ),
        ],
      ),
    );
  }
}

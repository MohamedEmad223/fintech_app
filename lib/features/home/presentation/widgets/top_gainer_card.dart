import 'package:cached_network_image/cached_network_image.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/core/widgets/fancy_network_image.dart';
import 'package:fintech_app/features/home/domain/entity/home_coin_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopGainerCard extends StatelessWidget {
  const TopGainerCard({super.key, required this.topGainerModel});

  final HomeCoinEntity topGainerModel;

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
            child: CachedNetworkImage(
              imageUrl: topGainerModel.image,
              imageBuilder: (context, imageProvider) => Container(
                width: 36.w,
                height: 36.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => FancyNetworkImage(
                height: 36,
                width: 36,
                imagePath: topGainerModel.image,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topGainerModel.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.font16PrimaryBold,
                ),
                SizedBox(height: 5.h),
                Text(
                  topGainerModel.symbol,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.font14PrimaryRegular,
                ),
              ],
            ),
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                topGainerModel.currentPrice.toString(),
                style: AppStyles.font14PrimaryMedium,
              ),
              SizedBox(height: 5.h),
              Text(
                "${topGainerModel.priceChangePercentage24h!.toStringAsFixed(2)}%",
                style: AppStyles.font12SuccessRegular,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

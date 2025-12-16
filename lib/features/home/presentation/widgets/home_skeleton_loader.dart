import 'package:fintech_app/features/home/presentation/widgets/home_total_value_card_shimmer.dart';
import 'package:fintech_app/features/home/presentation/widgets/shimmer_market_overview.dart';
import 'package:fintech_app/features/home/presentation/widgets/top_gainer_shimmer.dart';
import 'package:fintech_app/features/home/presentation/widgets/trending_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class HomeSkeletonLoader extends StatelessWidget {
  const HomeSkeletonLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 18.r, backgroundColor: Colors.white),
                    SizedBox(width: 8.w),
                    Container(height: 20.h, width: 100.w, color: Colors.white),
                  ],
                ),
                Container(height: 24.h, width: 24.w, color: Colors.white),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          const HomeTotalValueCardShimmer(),
          SizedBox(height: 14.h),
          _buildSectionTitleShimmer(),
          SizedBox(height: 10.h),
          const MarketOverviewShimmer(),
          SizedBox(height: 14.h),
          _buildSectionTitleShimmer(),
          SizedBox(height: 10.h),
          const TrendingShimmerLoading(),
          SizedBox(height: 14.h),
          _buildSectionTitleShimmer(),
          SizedBox(height: 10.h),
          const TopGainerShimmer(),
        ],
      ),
    );
  }

  Widget _buildSectionTitleShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: 20.h,
        width: 150.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}

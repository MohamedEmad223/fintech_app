import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:fintech_app/core/theming/app_colors.dart';

class TrendingShimmerLoading extends StatelessWidget {
  const TrendingShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
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
                        Container(
                          width: 100.w,
                          height: 16.h,
                          color: Colors.white,
                        ),
                        const Spacer(),
                        Container(
                          width: 36.w,
                          height: 36.h,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Container(width: 60.w, height: 14.h, color: Colors.white),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Container(
                          width: 80.w,
                          height: 16.h,
                          color: Colors.white,
                        ),
                        const Spacer(),
                        Container(
                          width: 40.w,
                          height: 14.h,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

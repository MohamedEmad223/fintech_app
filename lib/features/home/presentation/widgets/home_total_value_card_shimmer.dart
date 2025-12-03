import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fintech_app/core/theming/app_colors.dart';

class HomeTotalValueCardShimmer extends StatelessWidget {
  const HomeTotalValueCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(maxWidth: 600),
        height: 160.h,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120.w,
              height: 18.h,
              color: Colors.white,
            ),
            SizedBox(height: 16.h),
            Container(
              width: 180.w,
              height: 28.h,
              color: Colors.white,
            ),
            SizedBox(height: 16.h),
            Container(
              width: 140.w,
              height: 20.h,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

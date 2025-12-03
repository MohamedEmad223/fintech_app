import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class TopGainerShimmer extends StatelessWidget {
  const TopGainerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        itemCount: 4,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              padding: EdgeInsets.all(16.w),
              height: 100.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),

                  SizedBox(width: 12.w),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 130.w,
                          height: 14.h,
                          color: Colors.white,
                        ),
                        SizedBox(height: 6.h),
                        Container(
                          width: 80.w,
                          height: 12.h,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 12.w),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 50.w, height: 14.h, color: Colors.white),
                      SizedBox(height: 6.h),
                      Container(width: 40.w, height: 12.h, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 12.h),
      ),
    );
  }
}

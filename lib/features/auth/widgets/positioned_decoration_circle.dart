import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PositionedDecorationCircle extends StatelessWidget {
  const PositionedDecorationCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: -150.h,
            right: -120.w,
            child: Container(
              width: 342.w,
              height: 342.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFD6E4F5).withValues(alpha: .5),
              ),
            ),
          );
  }
}
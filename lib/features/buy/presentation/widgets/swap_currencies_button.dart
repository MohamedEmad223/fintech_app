import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';

class SwapCurrenciesButton extends StatelessWidget {
  final VoidCallback onTap;

  const SwapCurrenciesButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          // GestureDetector(
          //   onTap: onTap,
          //   child:
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.08),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Icon(
              Icons.swap_vert,
              color: AppColors.secondary,
              size: 24.sp,
            ),
          ),
      // ),
    );
  }
}

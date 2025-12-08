import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isFilled; 
  final Color filledColor;
  final Color textColor;
  final Color borderColor;
  final double height;
  final double radius;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isFilled = true,
    this.filledColor =  AppColors.primary,
    this.textColor = AppColors.primary,
    this.borderColor = AppColors.primary,
    this.height = 55,
    this.radius = 40,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          decoration: BoxDecoration(
            color: isFilled ? filledColor : Colors.transparent,
            borderRadius: BorderRadius.circular(radius),
            border: isFilled
                ? null
                : Border.all(
                    color: borderColor,
                    width: 2.w,
                  ),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              color: isFilled ? Colors.white : textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

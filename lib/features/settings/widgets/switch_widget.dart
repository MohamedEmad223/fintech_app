import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

bool isSwitched = false;

class _SwitchWidgetState extends State<SwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      height: 24.h,
      width: 39.w,
      padding: 4.w,
      toggleSize: 14.w,
      toggleColor: AppColors.whiteColor,
      borderRadius: 14.0.r,
      activeColor: AppColors.primary,
      value: isSwitched,
      onToggle: (value) {
        setState(() {
          isSwitched = value;
        });
      },
    );
  }
}

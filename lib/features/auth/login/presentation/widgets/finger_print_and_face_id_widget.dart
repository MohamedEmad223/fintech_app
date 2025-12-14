import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FingerPrintAndFaceIdWidget extends StatelessWidget {
  const FingerPrintAndFaceIdWidget({
    super.key,
    required this.fingerprintOnTap,
    required this.faceIdOnTap,
  });
  final void Function()? fingerprintOnTap;
  final void Function()? faceIdOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: fingerprintOnTap,
            child: SvgPicture.asset(AppAssets.fingerprintSvg),
          ),
          InkWell(
            onTap: faceIdOnTap,
            child: SvgPicture.asset(AppAssets.faceIdSvg),
          ),
        ],
      ),
    );
  }
}

import 'package:fintech_app/core/widgets/fancy_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoinHeader extends StatelessWidget {
  const CoinHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FancyNetworkImage(
          imagePath:
              'https://cryptologos.cc/logos/bitcoin-btc-logo.png', // Placeholder
          width: 40.w,
          height: 40.h,
        ),
        SizedBox(width: 12.w),
        Text(
          'Bitcoin',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF111827),
          ),
        ),
      ],
    );
  }
}

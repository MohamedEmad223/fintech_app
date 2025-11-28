import 'package:fintech_app/core/widgets/fancy_network_image.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoinHeader extends StatelessWidget {
  final CoinEntity coin;

  const CoinHeader({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FancyNetworkImage(
          imagePath: coin.image,
          width: 40.w,
          height: 40.h,
        ),
        SizedBox(width: 12.w),
        Text(
          coin.name,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF111827),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          coin.symbol.toUpperCase(),
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

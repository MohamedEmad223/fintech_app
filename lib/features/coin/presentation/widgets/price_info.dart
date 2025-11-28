import 'package:fintech_app/features/coin/domain/entity/coin_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/spacing.dart';

class PriceInfo extends StatelessWidget {
  final CoinEntity coin;

  const PriceInfo({super.key, required this.coin});

  String _formatPrice(double price) {
    final formatter = NumberFormat.currency(symbol: '\$', decimalDigits: 2);
    return formatter.format(price);
  }

  @override
  Widget build(BuildContext context) {
    final isPositive = coin.priceChangePercentage24h >= 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _formatPrice(coin.currentPrice),
              style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF111827),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: isPositive ? const Color(0xFF10B981) : const Color(0xFFEF4444),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Icon(
                    isPositive ? Icons.arrow_outward : Icons.arrow_downward,
                    color: Colors.white,
                    size: 14.sp,
                  ),
                  horizontalSpace(4),
                  Text(
                    '${coin.priceChangePercentage24h.toStringAsFixed(2)}%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        verticalSpace(4),
        Text(
          '/ 1 ${coin.symbol.toUpperCase()}',
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

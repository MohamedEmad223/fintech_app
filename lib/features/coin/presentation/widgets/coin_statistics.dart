import 'package:easy_localization/easy_localization.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/spacing.dart';

class CoinStatistics extends StatelessWidget {
  final CoinEntity coin;

  const CoinStatistics({super.key, required this.coin});

  String _formatCurrency(double value) {
    final formatter = NumberFormat.currency(symbol: '\$', decimalDigits: 2);
    return formatter.format(value);
  }

  String _formatNumber(double value) {
    final formatter = NumberFormat.compact();
    return formatter.format(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Statistics',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF111827),
          ),
        ),
        verticalSpace(16),
        _StatItem(
          label: 'Current Price',
          value: _formatCurrency(coin.currentPrice),
        ),
        _StatItem(label: 'Market Cap', value: _formatCurrency(coin.marketCap)),
        _StatItem(
          label: 'Volume 24h',
          value: _formatCurrency(coin.totalVolume),
        ),
        _StatItem(label: 'High 24h', value: _formatCurrency(coin.high24h)),
        _StatItem(label: 'Low 24h', value: _formatCurrency(coin.low24h)),
        _StatItem(
          label: 'Circulating Supply',
          value: _formatNumber(coin.circulatingSupply),
        ),
        if (coin.maxSupply != null)
          _StatItem(label: 'Max Supply', value: _formatNumber(coin.maxSupply!)),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;

  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xFF111827),
                  fontWeight: FontWeight.w500,
                ),
              ),
              horizontalSpace(4),
              Icon(Icons.info_outline, size: 14.sp, color: Colors.blue),
            ],
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/spacing.dart';

class CoinStatistics extends StatelessWidget {
  const CoinStatistics({super.key});

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
        const _StatItem(label: 'Current Price', value: '44,826,12 \$'),
        const _StatItem(label: 'Market Cap', value: '836,819 \$'),
        const _StatItem(label: 'Volume 24h', value: '35,867 \$'),
        const _StatItem(label: 'Available Supply', value: '18,784'),
        const _StatItem(label: 'Max Supply', value: '21,000'),
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

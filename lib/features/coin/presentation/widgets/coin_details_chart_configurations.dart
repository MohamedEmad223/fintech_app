import 'package:fintech_app/features/coin/presentation/widgets/price_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/spacing.dart';
import 'coin_chart.dart';

class CoinDetailsChartConfigurations extends StatelessWidget {
  const CoinDetailsChartConfigurations({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [const PriceInfo(), verticalSpace(20), const CoinChart()],
      ),
    );
  }
}

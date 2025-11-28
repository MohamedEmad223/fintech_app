import 'package:fintech_app/features/coin/domain/entity/coin_chart_entity.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_entity.dart';
import 'package:fintech_app/features/coin/presentation/widgets/price_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/spacing.dart';
import 'coin_chart.dart';
import 'currency_selector.dart';

class CoinDetailsChartConfigurations extends StatelessWidget {
  final CoinEntity coin;
  final CoinChartEntity chartData;
  final String selectedInterval;

  const CoinDetailsChartConfigurations({
    super.key,
    required this.coin,
    required this.chartData,
    required this.selectedInterval,
  });

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
        children: [
          PriceInfo(coin: coin),
          verticalSpace(12),
          const CurrencySelector(),
          verticalSpace(20),
          CoinChart(
            chartData: chartData,
            selectedInterval: selectedInterval,
          ),
        ],
      ),
    );
  }
}

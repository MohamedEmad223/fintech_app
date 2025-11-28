import 'package:fl_chart/fl_chart.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_chart_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/spacing.dart';
import '../controllers/coin_cubit.dart';

class CoinChart extends StatefulWidget {
  final CoinChartEntity chartData;
  final String selectedInterval;

  const CoinChart({
    super.key,
    required this.chartData,
    required this.selectedInterval,
  });

  @override
  State<CoinChart> createState() => _CoinChartState();
}

class _CoinChartState extends State<CoinChart> {
  List<Color> gradientColors = [
    const Color(0xFF1E1F4B),
    const Color(0x191E1F4B),
  ];
  final Map<String, String> _intervalMap = {
    '1d': '1',
    '1w': '7',
    '1m': '30',
    '1y': '365',
  };

  @override
  Widget build(BuildContext context) {
    final spots = widget.chartData.prices.asMap().entries.map((entry) {
      return FlSpot(entry.key.toDouble(), entry.value.price);
    }).toList();

    if (spots.isEmpty) {
      return Center(
        child: Text(
          'No chart data available',
          style: TextStyle(fontSize: 14.sp, color: Colors.grey),
        ),
      );
    }

    final minY = spots.map((e) => e.y).reduce((a, b) => a < b ? a : b);
    final maxY = spots.map((e) => e.y).reduce((a, b) => a > b ? a : b);
    final range = maxY - minY;

    return Column(
      children: [
        SizedBox(
          height: 200.h,
          width: double.infinity,
          child: LineChart(
            LineChartData(
              minY: minY - (range * 0.1),
              maxY: maxY + (range * 0.1),
              lineBarsData: [
                LineChartBarData(
                  spots: spots,
                  isCurved: true,
                  gradient: LinearGradient(
                    colors: [
                      ColorTween(
                        begin: gradientColors[0],
                        end: gradientColors[1],
                      ).lerp(0.2)!,
                      ColorTween(
                        begin: gradientColors[0],
                        end: gradientColors[1],
                      ).lerp(0.2)!,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  barWidth: 3,
                  preventCurveOverShooting: true,
                  dotData: FlDotData(
                    show: true,
                    checkToShowDot: (spot, barData) {
                      return barData.spots.indexOf(spot) ==
                          barData.spots.indexWhere(
                            (s) =>
                                s.y ==
                                barData.spots
                                    .map((e) => e.y)
                                    .reduce(
                                      (value, element) =>
                                          value > element ? value : element,
                                    ),
                          );
                    },
                    getDotPainter: (spot, percent, barData, index) =>
                        FlDotCirclePainter(
                          radius: 6,
                          color: const Color(0xffF56C2A),
                        ),
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      colors: [
                        ColorTween(
                          begin: gradientColors[0],
                          end: gradientColors[1],
                        ).lerp(0.2)!.withValues(alpha: 0.8),
                        ColorTween(
                          begin: gradientColors[0],
                          end: gradientColors[1],
                        ).lerp(0.2)!.withValues(alpha: 0.0),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ],
              gridData: FlGridData(
                show: true,
                drawVerticalLine: false,
                horizontalInterval: range > 0 ? range / 5 : 1,
                drawHorizontalLine: true,
                getDrawingHorizontalLine: (value) => const FlLine(
                  color: Color(0xFFBEBEBE),
                  strokeWidth: 1,
                  dashArray: [10, 5],
                ),
              ),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              borderData: FlBorderData(show: false),
            ),
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 500),
          ),
        ),
        verticalSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _intervalMap.keys.map((key) {
            return _TimeFilterButton(
              text: key,
              isSelected: _intervalMap[key] == widget.selectedInterval,
              onTap: () {
                context.read<CoinCubit>().loadChartData(_intervalMap[key]!);
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _TimeFilterButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const _TimeFilterButton({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF1D3A70) : Colors.transparent,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey[600],
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

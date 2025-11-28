import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/spacing.dart';

class CoinChart extends StatefulWidget {
  const CoinChart({super.key});

  @override
  State<CoinChart> createState() => _CoinChartState();
}

class _CoinChartState extends State<CoinChart> {
  //background: linear-gradient(180deg, #1E1F4B 14.99%, rgba(30, 31, 75, 0.1) 95.1%);
  List<Color> gradientColors = [
    const Color(0xFF1E1F4B),
    const Color(0x191E1F4B),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200.h,
          width: double.infinity,
          child: LineChart(
            LineChartData(
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 1),
                    FlSpot(1, 1.5),
                    FlSpot(2, 1.4),
                    FlSpot(3, 3.4),
                    FlSpot(4, 2),
                    FlSpot(5, 2.2),
                    FlSpot(6, 1.8),
                  ],
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
                        FlDotCirclePainter(radius: 6, color: Color(0xffF56C2A)),
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
                horizontalInterval: 0.4,
                drawHorizontalLine: true,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: const Color(0xFFBEBEBE),
                  strokeWidth: 1,
                  dashArray: [10, 5],
                ),
              ),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      /// Customize bottom titles here
                      return Text(
                        value.toStringAsFixed(2),
                        style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                      );
                    },
                    maxIncluded: true,
                    interval: 1,
                    minIncluded: true,
                  ),
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
          children: const [
            _TimeFilterButton(text: '1h', isSelected: false),
            _TimeFilterButton(text: '1d', isSelected: true),
            _TimeFilterButton(text: '1w', isSelected: false),
            _TimeFilterButton(text: '1m', isSelected: false),
            _TimeFilterButton(text: '1y', isSelected: false),
          ],
        ),
      ],
    );
  }
}

class _TimeFilterButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  const _TimeFilterButton({required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

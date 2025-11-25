import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssetData {
  final String name;
  final String symbol;
  final double percentage;
  final Color color;
  final IconData icon;

  AssetData({
    required this.name,
    required this.symbol,
    required this.percentage,
    required this.color,
    required this.icon,
  });
}

class PortfolioChartWidget extends StatelessWidget {
  final String totalValue;
  final List<AssetData> assets;

  const PortfolioChartWidget({
    super.key,
    required this.totalValue,
    required this.assets,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      child: Row(
        children: [
          SizedBox(
            width: 120.w,
            height: 120.w,
            child: Stack(
              children: [
                PieChart(
                  PieChartData(
                    sectionsSpace: 0,
                    centerSpaceRadius: 50.w,
                    sections: assets.map((asset) {
                      return PieChartSectionData(
                        color: asset.color,
                        value: asset.percentage,
                        title: '',
                        radius: 15.w,
                      );
                    }).toList(),
                  ),
                ),
                Center(
                  child: Text(totalValue, style: AppStyles.font16BlackBold),
                ),
              ],
            ),
          ),
          SizedBox(width: 24.w),
          // Legend
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: assets.map((asset) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: Row(
                    children: [
                      Container(
                        width: 14.w,
                        height: 14.h,
                        decoration: BoxDecoration(
                          color: asset.color,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              asset.symbol,
                              style: AppStyles.font12GreyRegular.copyWith(
                                color: AppColors.textTertiary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/portfolio_chart_widget.dart';
import 'package:flutter/material.dart';

import 'package:fintech_app/features/portfolio/data/models/assets_data_model.dart';

class PortfolioChartValueWidget extends StatelessWidget {
  const PortfolioChartValueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PortfolioChartWidget(
      totalValue: '\$143,421.20',
      assets: [
        AssetsDataModel(
          name: 'Bitcoin',
          symbol: '\$54,382.64 BTC',
          percentage: 20,
          color: AppColors.chartCyan,
          icon: Icons.currency_bitcoin,
        ),
        AssetsDataModel(
          name: 'Ethereum',
          symbol: '\$4,145.61 ETH',
          percentage: 30,
          color: AppColors.chartPurple,
          icon: Icons.currency_exchange,
        ),
        AssetsDataModel(
          name: 'Litecoin',
          symbol: '\$64,20.5 LTC',
          percentage: 55,
          color: AppColors.chartCoral,
          icon: Icons.currency_lira,
        ),
      ],
    );
  }
}

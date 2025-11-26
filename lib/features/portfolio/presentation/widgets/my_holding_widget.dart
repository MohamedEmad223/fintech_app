import 'package:fintech_app/features/portfolio/data/models/my_holding_model.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/holding_item_widget.dart';
import 'package:flutter/material.dart';

class MyHoldingWidget extends StatelessWidget {
  const MyHoldingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MyHoldingModel> holdings = [
      MyHoldingModel(
        icon: 'assets/svgs/bitcoin.svg',
        name: 'Bitcoin',
        symbol: 'BTC',
        amount: '0.05 BTC',
        dollarValue: '\$2,262.58',
        portfolioPercentage: '50%',
        priceChange: 145.20,
        percentageChange: 6.85,
      ),
      MyHoldingModel(
        icon: 'assets/svgs/ethereum.svg',
        name: 'Ethereum',
        symbol: 'ETH',
        amount: '1.5 ETH',
        dollarValue: '\$3,150.75',
        portfolioPercentage: '30%',
        priceChange: 56.70,
        percentageChange: 1.83,
      ),
      MyHoldingModel(
        icon: 'assets/svgs/lc.svg',
        name: 'Litecoin',
        symbol: 'LTC',
        amount: '26.3 LTC',
        dollarValue: '\$4,949.76',
        portfolioPercentage: '20%',
        priceChange: 120.80,
        percentageChange: 3.07,
      ),
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: holdings.length,
      itemBuilder: (context, index) {
        final holding = holdings[index];
        return HoldingItemWidget(
          icon: holding.icon,
          name: holding.name,
          symbol: holding.symbol,
          amount: holding.amount,
          dollarValue: holding.dollarValue,
          portfolioPercentage: holding.portfolioPercentage,
          priceChange: holding.priceChange,
          percentageChange: holding.percentageChange,
        );
      },
    );
  }
}

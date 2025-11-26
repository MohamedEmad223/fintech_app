import 'package:fintech_app/features/portfolio/presentation/widgets/holding_item_widget.dart';
import 'package:flutter/material.dart';

class MyHoldingWidget extends StatelessWidget {
  const MyHoldingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> icons = [
      'assets/svgs/bitcoin.svg',
      'assets/svgs/ethereum.svg',
      'assets/svgs/lc.svg',
    ];
    final List<String> names = ['Bitcoin', 'Ethereum', 'Litecoin'];
    final List<String> symbols = ['BTC', 'ETH', 'LTC'];
    final List<String> amounts = ['0.05 BTC', '1.5 ETH', '26.3 LTC'];
    final List<String> dollarValues = [
      '\$2,262.58',
      '\$3,150.75',
      '\$4,949.76',
    ];
    final List<String> portfolioPercentages = ['50%', '30%', '20%'];
    final List<double> priceChanges = [145.20, 56.70, 120.80];
    final List<double> percentageChanges = [6.85, 1.83, 3.07];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: names.length,
      itemBuilder: (context, index) {
        return HoldingItemWidget(
          icon: icons[index],
          name: names[index],
          symbol: symbols[index],
          amount: amounts[index],
          dollarValue: dollarValues[index],
          portfolioPercentage: portfolioPercentages[index],
          priceChange: priceChanges[index],
          percentageChange: percentageChanges[index],
        );
      },
    );
  }
}

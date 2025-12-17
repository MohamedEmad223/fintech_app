import 'package:fintech_app/features/portfolio/data/models/my_holding_model.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/holding_item_widget.dart';
import 'package:flutter/material.dart';

import 'package:fintech_app/features/portfolio/domain/entity/portfolio_entity.dart';

class MyHoldingWidget extends StatelessWidget {
  final List<CoinEntity> coins;
  const MyHoldingWidget({super.key, required this.coins});

  @override
  Widget build(BuildContext context) {
    final List<MyHoldingModel> holdings = [
      MyHoldingModel(
        icon: 'assets/svgs/bitcoin.svg',
        name: 'bitcoin',
        symbol: 'BTC',
        amount: '0.05 BTC',
        dollarValue: '\$2,262.58',
        portfolioPercentage: '50%',
        priceChange: 145.20,
        percentageChange: 6.85,
      ),
      MyHoldingModel(
        icon: 'assets/svgs/ethereum.svg',
        name: 'ethereum',
        symbol: 'ETH',
        amount: '1.5 ETH',
        dollarValue: '\$3,150.75',
        portfolioPercentage: '30%',
        priceChange: 56.70,
        percentageChange: 1.83,
      ),
      MyHoldingModel(
        icon: 'assets/svgs/lc.svg',
        name: 'litecoin',
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
        var holding = holdings[index];

        final matchingCoin = coins.firstWhere(
          (coin) => coin.name.toLowerCase() == holding.name.toLowerCase(),
          orElse: () => CoinEntity(name: holding.name, price: null),
        );
        if (matchingCoin.price != null) {
          holding = MyHoldingModel(
            icon: holding.icon,
            name: matchingCoin.name,
            symbol: holding.symbol,
            amount: holding.amount,
            dollarValue: '\$${matchingCoin.price}',
            portfolioPercentage: holding.portfolioPercentage,
            priceChange: holding.priceChange,
            percentageChange: holding.percentageChange,
          );
        }

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

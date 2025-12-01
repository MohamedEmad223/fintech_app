import 'package:fintech_app/features/home/data/card_item_model.dart';
import 'package:fintech_app/features/home/presentation/widgets/market_card.dart';
import 'package:flutter/material.dart';

class MarketOverviewGridViewWidget extends StatelessWidget {
  MarketOverviewGridViewWidget({super.key});
  final List<CardItemModel> items = [
    CardItemModel(title: "Market Cap", value: "\$2.1T", percent: "2,35%"),
    CardItemModel(title: "24h Volume", value: "\$85.5B", percent: "2,35%"),
    CardItemModel(title: "BTC Dominance", value: "48.5%"),
    CardItemModel(title: "Active Coins", value: "19.417"),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.6,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return MarketCard(item: items[index]);
      },
    );
  }
}

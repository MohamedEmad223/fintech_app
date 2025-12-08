import 'package:fintech_app/features/home/domain/entity/home_coin_entity.dart';
import 'package:fintech_app/features/home/presentation/widgets/market_card.dart';
import 'package:flutter/material.dart';

class MarketOverviewGridViewWidget extends StatelessWidget {
  const MarketOverviewGridViewWidget({super.key, required this.items});
  final List<HomeCoinEntity> items;
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
      itemCount: 4,
      itemBuilder: (context, index) {
        final item = items[index];
        return MarketCard(item: item);
      },
    );
  }
}

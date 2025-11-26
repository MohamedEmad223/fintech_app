import 'package:fintech_app/features/market/domain/entity/market_coin_entity.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/spacing.dart';
import 'crypto_list_item.dart';

class CryptoList extends StatelessWidget {
  final List<MarketCoinEntity> cryptos;
  const CryptoList({super.key, required this.cryptos});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: cryptos.length,
      separatorBuilder: (context, index) => verticalSpace(16),
      itemBuilder: (context, index) {
        final crypto = cryptos[index];
        return CryptoListItem(
          name: crypto.name,
          symbol: crypto.symbol.toUpperCase(),
          price: '\$${crypto.currentPrice}',
          change: '${crypto.priceChangePercentage24h.toStringAsFixed(2)}%',
          isPositive: crypto.priceChangePercentage24h >= 0,
          iconUrl: crypto.image,
        );
      },
    );
  }
}

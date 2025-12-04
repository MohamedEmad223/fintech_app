import 'package:fintech_app/features/home/data/models/trending_coins_response_model.dart';
import 'package:fintech_app/features/home/domain/entity/trending_coin_entity.dart';

extension TrendingCoinMapper on TrendingCoinsResponseModel {
  List<TrendingCoinEntity> toEntity() {
    return coins.map((trendingCoin) {
      final item = trendingCoin.item;
      final data = item.data;

      // Extract USD price change percentage from the map
      final priceChangeUsd = data.priceChangePercentage24h?['usd'] ?? 0.0;

      // Helper function to safely parse dynamic to double
      double parseToDouble(dynamic value) {
        if (value == null) return 0.0;
        if (value is num) return value.toDouble();
        if (value is String) return double.tryParse(value) ?? 0.0;
        return 0.0;
      }

      return TrendingCoinEntity(
        id: item.id,
        name: item.name,
        symbol: item.symbol,
        marketCapRank: item.marketCapRank,
        imageUrl: item.large,
        price: parseToDouble(data.price),
        priceChangePercentage24h: priceChangeUsd is num
            ? priceChangeUsd.toDouble()
            : 0.0,
        sparkline: data.sparkline ?? '',
      );
    }).toList();
  }
}

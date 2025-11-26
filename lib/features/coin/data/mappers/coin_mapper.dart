import 'package:fintech_app/features/coin/data/models/coin_chart_response_model.dart';
import 'package:fintech_app/features/coin/data/models/coin_response_model.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_chart_entity.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_entity.dart';

extension CoinResponseModelExtension on CoinResponseModel {
  CoinEntity toEntity() {
    return CoinEntity(
      id: id.name.toLowerCase(),
      symbol: symbol.toUpperCase(),
      name: name,
      image: image.large,
      currentPrice: marketData.currentPrice['usd'] ?? 0.0,
      priceChangePercentage24h: marketData.priceChangePercentage24H,
      marketCapRank: marketCapRank,
      marketCap: marketData.marketCap['usd'] ?? 0.0,
      totalVolume: marketData.totalVolume['usd'] ?? 0.0,
      high24h: marketData.high24H['usd'] ?? 0.0,
      low24h: marketData.low24H['usd'] ?? 0.0,
      circulatingSupply: marketData.circulatingSupply.toDouble(),
      totalSupply: marketData.totalSupply.toDouble(),
      maxSupply: marketData.maxSupply.toDouble(),
      description: description.en,
      categories: categories,
    );
  }
}

extension CoinChartResponseModelExtension on CoinChartResponseModel {
  CoinChartEntity toEntity() {
    final chartPoints = prices.map((priceData) {
      return ChartPoint(
        timestamp: DateTime.fromMillisecondsSinceEpoch(priceData[0].toInt()),
        price: priceData[1],
      );
    }).toList();

    return CoinChartEntity(prices: chartPoints);
  }
}

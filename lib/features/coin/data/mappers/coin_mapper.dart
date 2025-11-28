import 'package:fintech_app/features/coin/data/models/coin_chart_response_model.dart';
import 'package:fintech_app/features/coin/data/models/coin_response_model.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_chart_entity.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_entity.dart';

extension CoinResponseModelExtension on CoinResponseModel {
  CoinEntity toEntity() {
    try {
      print('🔄 Mapping coin response: id=$id, symbol=$symbol, name=$name');

      final entity = CoinEntity(
        id: id,
        symbol: symbol ?? 'N/A',
        name: name ?? 'Unknown',
        image: image?.large ?? '',
        currentPrice: marketData?.currentPrice?['usd'] ?? 0.0,
        priceChangePercentage24h: marketData?.priceChangePercentage24H ?? 0.0,
        marketCapRank: marketCapRank ?? 0,
        marketCap: marketData?.marketCap?['usd'] ?? 0.0,
        totalVolume: marketData?.totalVolume?['usd'] ?? 0.0,
        high24h: marketData?.high24H?['usd'] ?? 0.0,
        low24h: marketData?.low24H?['usd'] ?? 0.0,
        circulatingSupply: (marketData?.circulatingSupply ?? 0).toDouble(),
        totalSupply: (marketData?.totalSupply ?? 0).toDouble(),
        maxSupply: marketData?.maxSupply?.toDouble(),
        description: description?.en ?? '',
        categories: categories ?? [],
      );

      print('✅ Coin entity mapped successfully');
      return entity;
    } catch (e, stackTrace) {
      print('❌ Error in toEntity mapper: $e');
      print('📋 Stack trace:\n$stackTrace');
      rethrow;
    }
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

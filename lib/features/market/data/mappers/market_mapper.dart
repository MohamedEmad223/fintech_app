import 'package:fintech_app/features/market/data/models/market_response_model.dart';
import 'package:fintech_app/features/market/data/models/market_search_response_model.dart';
import 'package:fintech_app/features/market/domain/entity/market_coin_entity.dart';

extension MarketResponseModelExtension on MarketResponseModel {
  MarketCoinEntity toEntity() {
    return MarketCoinEntity(
      id: id,
      symbol: symbol,
      name: name,
      image: image,
      currentPrice: currentPrice,
      marketCapRank: marketCapRank,
      priceChangePercentage24h: priceChangePercentage24H,
    );
  }
}

extension CoinExtension on Coin {
  MarketCoinEntity toEntity() {
    return MarketCoinEntity(
      id: id,
      symbol: symbol,
      name: name,
      image: large,
      currentPrice: 0.0,
      marketCapRank: marketCapRank,
      priceChangePercentage24h: 0.0,
    );
  }
}

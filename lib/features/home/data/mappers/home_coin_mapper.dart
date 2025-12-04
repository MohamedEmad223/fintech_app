import 'package:fintech_app/features/home/data/models/coin_home_response_model.dart';
import 'package:fintech_app/features/home/domain/entity/home_coin_entity.dart';

extension CoinMapper on CoinHomeResponseModel {
  HomeCoinEntity toEntity() {
    return HomeCoinEntity(
      id: id,
      symbol: symbol,
      name: name,
      image: image,
      currentPrice: currentPrice,
      marketCap: marketCap,
      marketCapRank: marketCapRank,
      priceChange24h: priceChange24h,
      priceChangePercentage24h: priceChangePercentage24h,
    );
  }
}

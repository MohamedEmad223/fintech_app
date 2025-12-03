import 'package:fintech_app/features/home/data/models/global_crypto_response_model.dart';
import 'package:fintech_app/features/home/domain/entity/crypto_global_entity.dart';

extension CryptoGlobalMapper on GlobalCryptoResponseModel {
  CryptoGlobalEntity toEntity() {
    return CryptoGlobalEntity(
      activeCryptocurrencies: data.activeCryptocurrencies,
      markets: data.markets,
      totalMarketCapUsd: data.totalMarketCap['usd']?.toDouble() ?? 0.0,
      totalVolumeUsd: data.totalVolume['usd']?.toDouble() ?? 0.0,
      btcDominance: data.marketCapPercentage['btc']?.toDouble() ?? 0.0,
      ethDominance: data.marketCapPercentage['eth']?.toDouble() ?? 0.0,
      marketCapChangePercentage24h: data.marketCapChangePercentage24hUsd,
    );
  }
}

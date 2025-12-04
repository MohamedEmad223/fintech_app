import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_global_entity.freezed.dart';

@freezed
abstract class CryptoGlobalEntity with _$CryptoGlobalEntity {
  const factory CryptoGlobalEntity({
    required int activeCryptocurrencies,
    required int markets,
    required double totalMarketCapUsd,
    required double totalVolumeUsd,
    required double btcDominance,
    required double ethDominance,
    required double marketCapChangePercentage24h,
  }) = _CryptoGlobalEntity;
}

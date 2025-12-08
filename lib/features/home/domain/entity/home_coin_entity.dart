import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_coin_entity.freezed.dart';

@freezed
abstract class HomeCoinEntity with _$HomeCoinEntity {
  const factory HomeCoinEntity({
    required String id,
    required String symbol,
    required String name,
    required String image,
    double? currentPrice,
    double? marketCap,
    int? marketCapRank,
    double? priceChange24h,
    double? priceChangePercentage24h,
  }) = _HomeCoinEntity;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_coin_entity.freezed.dart';

@freezed
abstract class TrendingCoinEntity with _$TrendingCoinEntity {
  const factory TrendingCoinEntity({
    required String id,
    required String name,
    required String symbol,
    required int marketCapRank,
    required String imageUrl,
    required double price,
    required double priceChangePercentage24h,
    required String sparkline,
  }) = _TrendingCoinEntity;
}

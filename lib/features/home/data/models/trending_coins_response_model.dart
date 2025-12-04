import 'package:json_annotation/json_annotation.dart';

part 'trending_coins_response_model.g.dart';

@JsonSerializable()
class TrendingCoinsResponseModel {
  final List<TrendingCoin> coins;

  TrendingCoinsResponseModel({required this.coins});

  factory TrendingCoinsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TrendingCoinsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingCoinsResponseModelToJson(this);
}

@JsonSerializable()
class TrendingCoin {
  final TrendingItem item;

  TrendingCoin({required this.item});

  factory TrendingCoin.fromJson(Map<String, dynamic> json) =>
      _$TrendingCoinFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingCoinToJson(this);
}

@JsonSerializable()
class TrendingItem {
  final String id;

  @JsonKey(name: 'coin_id')
  final int coinId;
  final String name;
  final String symbol;

  @JsonKey(name: 'market_cap_rank')
  final int marketCapRank;

  final String thumb;
  final String small;
  final String large;
  final String slug;

  @JsonKey(name: 'price_btc')
  final num priceBtc;
  final int score;
  final TrendingData data;

  TrendingItem({
    required this.id,
    required this.coinId,
    required this.name,
    required this.symbol,
    required this.marketCapRank,
    required this.thumb,
    required this.small,
    required this.large,
    required this.slug,
    required this.priceBtc,
    required this.score,
    required this.data,
  });

  factory TrendingItem.fromJson(Map<String, dynamic> json) =>
      _$TrendingItemFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingItemToJson(this);
}

@JsonSerializable()
class TrendingData {
  final dynamic price; // Changed from num? to dynamic to handle String

  @JsonKey(name: 'price_btc')
  final dynamic priceBtc; // Changed from num? to dynamic

  @JsonKey(name: 'price_change_percentage_24h')
  final Map<String, dynamic>? priceChangePercentage24h;

  @JsonKey(name: 'market_cap')
  final dynamic marketCap; // Changed from num? to dynamic

  @JsonKey(name: 'market_cap_btc')
  final dynamic marketCapBtc; // Changed from num? to dynamic

  @JsonKey(name: 'total_volume')
  final dynamic totalVolume; // Changed from num? to dynamic

  @JsonKey(name: 'total_volume_btc')
  final dynamic totalVolumeBtc; // Changed from num? to dynamic

  final String? sparkline;

  final TrendingContent? content;

  TrendingData({
    this.price,
    this.priceBtc,
    this.priceChangePercentage24h,
    this.marketCap,
    this.marketCapBtc,
    this.totalVolume,
    this.totalVolumeBtc,
    this.sparkline,
    this.content,
  });

  factory TrendingData.fromJson(Map<String, dynamic> json) =>
      _$TrendingDataFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingDataToJson(this);
}

@JsonSerializable()
class TrendingContent {
  final String title;
  final String description;

  TrendingContent({required this.title, required this.description});

  factory TrendingContent.fromJson(Map<String, dynamic> json) =>
      _$TrendingContentFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingContentToJson(this);
}

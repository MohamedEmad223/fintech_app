import 'package:json_annotation/json_annotation.dart';

part 'coin_home_response_model.g.dart';

@JsonSerializable()
class CoinHomeResponseModel {
  final String id;
  final String symbol;
  final String name;
  final String image;

  @JsonKey(name: 'current_price')
  final double? currentPrice;

  @JsonKey(name: 'market_cap')
  final double? marketCap;

  @JsonKey(name: 'market_cap_rank')
  final int? marketCapRank;

  @JsonKey(name: 'fully_diluted_valuation')
  final double? fullyDilutedValuation;

  @JsonKey(name: 'total_volume')
  final double? totalVolume;

  @JsonKey(name: 'high_24h')
  final double? high24h;

  @JsonKey(name: 'low_24h')
  final double? low24h;

  @JsonKey(name: 'price_change_24h')
  final double? priceChange24h;

  @JsonKey(name: 'price_change_percentage_24h')
  final double? priceChangePercentage24h;

  @JsonKey(name: 'market_cap_change_24h')
  final double? marketCapChange24h;

  @JsonKey(name: 'market_cap_change_percentage_24h')
  final double? marketCapChangePercentage24h;

  @JsonKey(name: 'circulating_supply')
  final double? circulatingSupply;

  @JsonKey(name: 'total_supply')
  final double? totalSupply;

  @JsonKey(name: 'max_supply')
  final double? maxSupply;

  final double? ath;

  @JsonKey(name: 'ath_change_percentage')
  final double? athChangePercentage;

  @JsonKey(name: 'ath_date')
  final DateTime? athDate;

  final double? atl;

  @JsonKey(name: 'atl_change_percentage')
  final double? atlChangePercentage;

  @JsonKey(name: 'atl_date')
  final DateTime? atlDate;

  final Roi? roi;

  @JsonKey(name: 'last_updated')
  final DateTime? lastUpdated;

  CoinHomeResponseModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    this.currentPrice,
    this.marketCap,
    this.marketCapRank,
    this.fullyDilutedValuation,
    this.totalVolume,
    this.high24h,
    this.low24h,
    this.priceChange24h,
    this.priceChangePercentage24h,
    this.marketCapChange24h,
    this.marketCapChangePercentage24h,
    this.circulatingSupply,
    this.totalSupply,
    this.maxSupply,
    this.ath,
    this.athChangePercentage,
    this.athDate,
    this.atl,
    this.atlChangePercentage,
    this.atlDate,
    this.roi,
    this.lastUpdated,
  });

  factory CoinHomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CoinHomeResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$CoinHomeResponseModelToJson(this);
}

@JsonSerializable()
class Roi {
  final double? times;
  final String? currency;
  final double? percentage;

  Roi({this.times, this.currency, this.percentage});

  factory Roi.fromJson(Map<String, dynamic> json) => _$RoiFromJson(json);
  Map<String, dynamic> toJson() => _$RoiToJson(this);
}

// // Helper: parse a list of coins from JSON string / decoded JSON list
// List<CoinHomeResponseModel> parseCoinList(List<dynamic> jsonList) =>
//     jsonList.map((e) => CoinHomeResponseModel.fromJson(e as Map<String, dynamic>)).toList();

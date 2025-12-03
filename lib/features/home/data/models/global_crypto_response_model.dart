import 'package:json_annotation/json_annotation.dart';

part 'global_crypto_response_model.g.dart';

@JsonSerializable()
class GlobalCryptoResponseModel {
  final GlobalData data;

  GlobalCryptoResponseModel({required this.data});

  factory GlobalCryptoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GlobalCryptoResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$GlobalCryptoResponseModelToJson(this);
}

@JsonSerializable()
class GlobalData {
  @JsonKey(name: 'active_cryptocurrencies')
  final int activeCryptocurrencies;

  @JsonKey(name: 'upcoming_icos')
  final int upcomingIcos;

  @JsonKey(name: 'ongoing_icos')
  final int ongoingIcos;

  @JsonKey(name: 'ended_icos')
  final int endedIcos;

  final int markets;

  @JsonKey(name: 'total_market_cap')
  final Map<String, num> totalMarketCap;

  @JsonKey(name: 'total_volume')
  final Map<String, num> totalVolume;

  @JsonKey(name: 'market_cap_percentage')
  final Map<String, num> marketCapPercentage;

  @JsonKey(name: 'market_cap_change_percentage_24h_usd')
  final double marketCapChangePercentage24hUsd;

  @JsonKey(name: 'updated_at')
  final int updatedAt;

  GlobalData({
    required this.activeCryptocurrencies,
    required this.upcomingIcos,
    required this.ongoingIcos,
    required this.endedIcos,
    required this.markets,
    required this.totalMarketCap,
    required this.totalVolume,
    required this.marketCapPercentage,
    required this.marketCapChangePercentage24hUsd,
    required this.updatedAt,
  });

  factory GlobalData.fromJson(Map<String, dynamic> json) =>
      _$GlobalDataFromJson(json);
  Map<String, dynamic> toJson() => _$GlobalDataToJson(this);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_chart_response_model.g.dart';

@JsonSerializable()
class CoinChartResponseModel {
  @JsonKey(name: "prices")
  List<List<double>> prices;
  @JsonKey(name: "market_caps")
  List<List<double>> marketCaps;
  @JsonKey(name: "total_volumes")
  List<List<double>> totalVolumes;

  CoinChartResponseModel({
    required this.prices,
    required this.marketCaps,
    required this.totalVolumes,
  });

  factory CoinChartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CoinChartResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoinChartResponseModelToJson(this);
}

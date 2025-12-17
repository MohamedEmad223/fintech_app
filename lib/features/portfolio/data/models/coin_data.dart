

import 'package:json_annotation/json_annotation.dart';

part 'coin_data.g.dart';


@JsonSerializable()
class CoinData {
  final String name;
  final double? usd;

  CoinData({required this.name, this.usd});

  factory CoinData.fromJson(Map<String, dynamic> json) =>
      _$CoinDataFromJson(json);

  Map<String, dynamic> toJson() => _$CoinDataToJson(this);

}
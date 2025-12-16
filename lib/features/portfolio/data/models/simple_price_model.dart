import 'package:json_annotation/json_annotation.dart';

import 'coin_data.dart';

part 'simple_price_model.g.dart';

@JsonSerializable()
class SimplePriceModel {
  final List<CoinData>? coins;

  SimplePriceModel({required this.coins});

  factory SimplePriceModel.fromJson(Map<String, dynamic> json) {
    final list = <CoinData>[];

    json.forEach((key, value) {
      final coinJson = Map<String, dynamic>.from(value);
      coinJson['name'] = key;

      list.add(CoinData.fromJson(coinJson));
    });

    return SimplePriceModel(coins: list);
  }

  Map<String, dynamic> toJson() => _$SimplePriceModelToJson(this);
}

/// i Made from json like that because the keys is not "Coins" i choose what i want but the 
/// key show from the value i send like "Bitcoin" , json_serializable  can not make this parsing so i made from json manually
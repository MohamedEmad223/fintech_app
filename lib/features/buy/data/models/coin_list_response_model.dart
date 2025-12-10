import 'package:json_annotation/json_annotation.dart';

part 'coin_list_response_model.g.dart';

@JsonSerializable()
class CoinListItemModel {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'symbol')
  final String symbol;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'platforms')
  final Map<String, String>? platforms;

  const CoinListItemModel({
    required this.id,
    required this.symbol,
    required this.name,
    this.platforms,
  });

  factory CoinListItemModel.fromJson(Map<String, dynamic> json) =>
      _$CoinListItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoinListItemModelToJson(this);
}

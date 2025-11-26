import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_search_response_model.g.dart';

@JsonSerializable()
class MarketSearchResponseModel {
  @JsonKey(name: "coins")
  List<Coin> coins;
  @JsonKey(name: "exchanges")
  List<Exchange> exchanges;
  @JsonKey(name: "icos")
  List<dynamic> icos;
  @JsonKey(name: "categories")
  List<Category> categories;
  @JsonKey(name: "nfts")
  List<Nft> nfts;

  MarketSearchResponseModel({
    required this.coins,
    required this.exchanges,
    required this.icos,
    required this.categories,
    required this.nfts,
  });

  factory MarketSearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MarketSearchResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$MarketSearchResponseModelToJson(this);
}

@JsonSerializable()
class Category {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name")
  String name;

  Category({required this.id, required this.name});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class Coin {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "api_symbol")
  String apiSymbol;
  @JsonKey(name: "symbol")
  String symbol;
  @JsonKey(name: "market_cap_rank")
  int marketCapRank;
  @JsonKey(name: "thumb")
  String thumb;
  @JsonKey(name: "large")
  String large;

  Coin({
    required this.id,
    required this.name,
    required this.apiSymbol,
    required this.symbol,
    required this.marketCapRank,
    required this.thumb,
    required this.large,
  });

  factory Coin.fromJson(Map<String, dynamic> json) => _$CoinFromJson(json);

  Map<String, dynamic> toJson() => _$CoinToJson(this);
}

@JsonSerializable()
class Exchange {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "market_type")
  MarketType marketType;
  @JsonKey(name: "thumb")
  String thumb;
  @JsonKey(name: "large")
  String large;

  Exchange({
    required this.id,
    required this.name,
    required this.marketType,
    required this.thumb,
    required this.large,
  });

  factory Exchange.fromJson(Map<String, dynamic> json) =>
      _$ExchangeFromJson(json);

  Map<String, dynamic> toJson() => _$ExchangeToJson(this);
}

enum MarketType {
  @JsonValue("spot")
  SPOT,
}

@JsonSerializable()
class Nft {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "symbol")
  String symbol;
  @JsonKey(name: "thumb")
  String thumb;

  Nft({
    required this.id,
    required this.name,
    required this.symbol,
    required this.thumb,
  });

  factory Nft.fromJson(Map<String, dynamic> json) => _$NftFromJson(json);

  Map<String, dynamic> toJson() => _$NftToJson(this);
}

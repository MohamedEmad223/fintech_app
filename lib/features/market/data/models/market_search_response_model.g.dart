// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketSearchResponseModel _$MarketSearchResponseModelFromJson(
  Map<String, dynamic> json,
) => MarketSearchResponseModel(
  coins: (json['coins'] as List<dynamic>)
      .map((e) => Coin.fromJson(e as Map<String, dynamic>))
      .toList(),
  exchanges: (json['exchanges'] as List<dynamic>)
      .map((e) => Exchange.fromJson(e as Map<String, dynamic>))
      .toList(),
  icos: json['icos'] as List<dynamic>,
  categories: (json['categories'] as List<dynamic>)
      .map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
  nfts: (json['nfts'] as List<dynamic>)
      .map((e) => Nft.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MarketSearchResponseModelToJson(
  MarketSearchResponseModel instance,
) => <String, dynamic>{
  'coins': instance.coins,
  'exchanges': instance.exchanges,
  'icos': instance.icos,
  'categories': instance.categories,
  'nfts': instance.nfts,
};

Category _$CategoryFromJson(Map<String, dynamic> json) =>
    Category(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

Coin _$CoinFromJson(Map<String, dynamic> json) => Coin(
  id: json['id'] as String,
  name: json['name'] as String,
  apiSymbol: json['api_symbol'] as String,
  symbol: json['symbol'] as String,
  marketCapRank: (json['market_cap_rank'] as num).toInt(),
  thumb: json['thumb'] as String,
  large: json['large'] as String,
);

Map<String, dynamic> _$CoinToJson(Coin instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'api_symbol': instance.apiSymbol,
  'symbol': instance.symbol,
  'market_cap_rank': instance.marketCapRank,
  'thumb': instance.thumb,
  'large': instance.large,
};

Exchange _$ExchangeFromJson(Map<String, dynamic> json) => Exchange(
  id: json['id'] as String,
  name: json['name'] as String,
  marketType: $enumDecode(_$MarketTypeEnumMap, json['market_type']),
  thumb: json['thumb'] as String,
  large: json['large'] as String,
);

Map<String, dynamic> _$ExchangeToJson(Exchange instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'market_type': _$MarketTypeEnumMap[instance.marketType]!,
  'thumb': instance.thumb,
  'large': instance.large,
};

const _$MarketTypeEnumMap = {MarketType.SPOT: 'spot'};

Nft _$NftFromJson(Map<String, dynamic> json) => Nft(
  id: json['id'] as String,
  name: json['name'] as String,
  symbol: json['symbol'] as String,
  thumb: json['thumb'] as String,
);

Map<String, dynamic> _$NftToJson(Nft instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'symbol': instance.symbol,
  'thumb': instance.thumb,
};

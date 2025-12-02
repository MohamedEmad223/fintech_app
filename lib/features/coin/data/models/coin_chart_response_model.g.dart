// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_chart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinChartResponseModel _$CoinChartResponseModelFromJson(
  Map<String, dynamic> json,
) => CoinChartResponseModel(
  prices: (json['prices'] as List<dynamic>)
      .map(
        (e) => (e as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
      )
      .toList(),
  marketCaps: (json['market_caps'] as List<dynamic>)
      .map(
        (e) => (e as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
      )
      .toList(),
  totalVolumes: (json['total_volumes'] as List<dynamic>)
      .map(
        (e) => (e as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
      )
      .toList(),
);

Map<String, dynamic> _$CoinChartResponseModelToJson(
  CoinChartResponseModel instance,
) => <String, dynamic>{
  'prices': instance.prices,
  'market_caps': instance.marketCaps,
  'total_volumes': instance.totalVolumes,
};

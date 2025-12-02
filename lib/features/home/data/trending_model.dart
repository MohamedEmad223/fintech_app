import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_model.freezed.dart';

@freezed
abstract class TrendingModel with _$TrendingModel {
  const factory TrendingModel({
    required String name,
    required String symbol,
    required String value,
    required String percent,
    required String icon,
  }) = _TrendingModel;
}

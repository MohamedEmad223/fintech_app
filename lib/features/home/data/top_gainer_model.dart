import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_gainer_model.freezed.dart';

@freezed
abstract class TopGainerModel with _$TopGainerModel {
  const factory TopGainerModel({
    required String name,
    required String symbol,
    required String value,
    required String percent,
    required String icon,
  }) = _TopGainerModel;
}

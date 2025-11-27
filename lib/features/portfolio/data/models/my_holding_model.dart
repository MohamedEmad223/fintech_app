import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_holding_model.freezed.dart';

@freezed
abstract class MyHoldingModel with _$MyHoldingModel {
  const factory MyHoldingModel({
    required String icon,
    required String name,
    required String symbol,
    required String amount,
    required String dollarValue,
    required String portfolioPercentage,
    required double priceChange,
    required double percentageChange,
  }) = _MyHoldingModel;
}

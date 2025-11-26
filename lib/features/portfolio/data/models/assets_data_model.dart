import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assets_data_model.freezed.dart';

@freezed
abstract class AssetsDataModel with _$AssetsDataModel {
  const factory AssetsDataModel({
    required String name,
    required String symbol,
    required double percentage,
    required Color color,
    required IconData icon,
  }) = _AssetsDataModel;
}

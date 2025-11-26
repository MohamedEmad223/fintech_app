import 'package:fintech_app/core/networking/api_error_model.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_chart_entity.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_state.freezed.dart';

@freezed
class CoinState with _$CoinState {
  const factory CoinState.initial() = CoinInitial;

  const factory CoinState.loading() = CoinLoading;

  const factory CoinState.success({
    required CoinEntity coin,
    required CoinChartEntity chartData,
    required String selectedTimePeriod,
  }) = CoinSuccess;

  const factory CoinState.error(ApiErrorModel error) = CoinError;

  const factory CoinState.chartLoading({
    required CoinEntity coin,
    required CoinChartEntity chartData,
    required String selectedTimePeriod,
  }) = CoinChartLoading;
}

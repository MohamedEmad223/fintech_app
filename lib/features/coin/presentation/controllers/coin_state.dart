import 'package:fintech_app/features/coin/domain/entity/coin_chart_entity.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_state.freezed.dart';

@freezed
class CoinState with _$CoinState {
  const factory CoinState.initial() = CoinInitial;

  ///Coin Details
  const factory CoinState.coinDetailsLOADING() = CoinDetailsLoading;

  const factory CoinState.coinDetailsSuccess({required CoinEntity coin}) =
      CoinDetailsSuccess;

  const factory CoinState.coinDetailsFailure({required String error}) =
      CoinDetailsFailure;

  ///Coin Chart Data
  const factory CoinState.coinChartDataLoading() = CoinChartDataLoading;

  const factory CoinState.coinChartDataSuccess({
    required CoinChartEntity coinChartData,
    required String selectedInterval,
  }) = CoinChartDataSuccess;

  const factory CoinState.coinChartDataFailure({required String error}) =
      CoinChartDataFailure;
}

import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/coin/domain/use_cases/get_coin_chart_data_use_case.dart';
import 'package:fintech_app/features/coin/domain/use_cases/get_coin_details_use_case.dart';
import 'package:fintech_app/features/coin/presentation/controllers/coin_state.dart';

class CoinCubit extends Cubit<CoinState> {
  final GetCoinDetailsUseCase _getCoinDetailsUseCase;
  final GetCoinChartDataUseCase _getCoinChartDataUseCase;

  CoinCubit(this._getCoinDetailsUseCase, this._getCoinChartDataUseCase)
    : super(const CoinState.initial());

  String _currentCoinId = '';
  String _selectedTimePeriod = '1';

  Future<void> loadCoinDetails(String coinId) async {
    _currentCoinId = coinId;
    emit(const CoinState.loading());

    final coinResult = await _getCoinDetailsUseCase(coinId: coinId);

    switch (coinResult) {
      case Success(data: final coin):
        final chartResult = await _getCoinChartDataUseCase(
          coinId: coinId,
          days: _selectedTimePeriod,
        );

        switch (chartResult) {
          case Success(data: final chartData):
            emit(
              CoinState.success(
                coin: coin,
                chartData: chartData,
                selectedTimePeriod: _selectedTimePeriod,
              ),
            );
          case Failure(apiErrorModel: final error):
            emit(CoinState.error(error));
        }
      case Failure(apiErrorModel: final error):
        emit(CoinState.error(error));
    }
  }

  Future<void> loadChartData(String days) async {
    final currentState = state;
    if (currentState is! CoinSuccess) return;

    _selectedTimePeriod = days;

    emit(
      CoinState.chartLoading(
        coin: currentState.coin,
        chartData: currentState.chartData,
        selectedTimePeriod: days,
      ),
    );

    final chartResult = await _getCoinChartDataUseCase(
      coinId: _currentCoinId,
      days: days,
    );

    switch (chartResult) {
      case Success(data: final chartData):
        emit(
          CoinState.success(
            coin: currentState.coin,
            chartData: chartData,
            selectedTimePeriod: days,
          ),
        );
      case Failure(apiErrorModel: final error):
        emit(CoinState.error(error));
    }
  }
}

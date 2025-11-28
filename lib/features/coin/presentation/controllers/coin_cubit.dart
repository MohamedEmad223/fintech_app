import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_chart_entity.dart';
import 'package:fintech_app/features/coin/domain/use_cases/get_coin_chart_data_use_case.dart';
import 'package:fintech_app/features/coin/domain/use_cases/get_coin_details_use_case.dart';
import 'package:fintech_app/features/coin/presentation/controllers/coin_state.dart';

import '../../domain/entity/coin_entity.dart';

class CoinCubit extends Cubit<CoinState> {
  final GetCoinDetailsUseCase _getCoinDetailsUseCase;
  final GetCoinChartDataUseCase _getCoinChartDataUseCase;

  CoinCubit(this._getCoinDetailsUseCase, this._getCoinChartDataUseCase)
    : super(const CoinState.initial());

  String _currentInterval = '1';

  Future<void> loadCoinDetails(String coinId, String selectedInterval) async {
    emit(const CoinState.coinDetailsLOADING());

    final ApiResult<CoinEntity> coinResult = await _getCoinDetailsUseCase(
      coinId: coinId,
    );

    coinResult.when(
      success: (coin) async {
        emit(CoinState.coinDetailsSuccess(coin: coin));
        await loadChartData(coinId, selectedInterval);
      },
      failure: (error) {
        emit(
          CoinState.coinDetailsFailure(error: error.message ?? 'Unknown Error'),
        );
      },
    );
  }

  Future<void> loadChartData(String coinId, String interval) async {
    _currentInterval = interval;

    emit(const CoinState.coinChartDataLoading());

    final coinChartResult = await _getCoinChartDataUseCase(
      coinId: coinId,
      interval: interval,
    );

    coinChartResult.when(
      success: (CoinChartEntity coinChartData) {
        emit(
          CoinState.coinChartDataSuccess(
            coinChartData: coinChartData,
            selectedInterval: interval,
          ),
        );
      },
      failure: (error) {
        emit(
          CoinState.coinChartDataFailure(
            error: error.message ?? 'Unknown Error',
          ),
        );
      },
    );
  }
}

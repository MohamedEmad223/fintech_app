import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_chart_entity.dart';
import 'package:fintech_app/features/coin/domain/use_cases/get_coin_chart_data_use_case.dart';
import 'package:fintech_app/features/coin/domain/use_cases/get_coin_details_use_case.dart';
import 'package:fintech_app/features/coin/domain/use_cases/get_supported_currencies_use_case.dart';
import 'package:fintech_app/features/coin/presentation/controllers/coin_state.dart';

import '../../domain/entity/coin_entity.dart';

class CoinCubit extends Cubit<CoinState> {
  final GetCoinDetailsUseCase _getCoinDetailsUseCase;
  final GetCoinChartDataUseCase _getCoinChartDataUseCase;
  final GetSupportedCurrenciesUseCase _getSupportedCurrenciesUseCasen;

  CoinCubit(
    this._getCoinDetailsUseCase,
    this._getCoinChartDataUseCase,
    this._getSupportedCurrenciesUseCasen,
  ) : super(const CoinState.initial());

  String? _currentCoinId;
  String _currentInterval = '1';
  String _currentCurrency = 'usd';
  CoinEntity? _currentCoin;
  List<String> _supportedCurrencies = [];

  String get currentCurrency => _currentCurrency;
  List<String> get supportedCurrencies => _supportedCurrencies;

  Future<void> loadCoinDetails(String coinId) async {
    _currentCoinId = coinId;
    emit(const CoinState.coinDetailsLOADING());

    final ApiResult<CoinEntity> coinResult = await _getCoinDetailsUseCase(
      coinId: coinId,
    );

    coinResult.when(
      success: (coin) async {
        _currentCoin = coin;
        emit(CoinState.coinDetailsSuccess(coin: coin));
        await loadChartData(_currentInterval);
      },
      failure: (error) {
        emit(
          CoinState.coinDetailsFailure(error: error.message ?? 'Unknown Error'),
        );
      },
    );
  }

  Future<void> loadChartData(String interval, {String? currency}) async {
    if (_currentCoinId == null) return;

    _currentInterval = interval;
    if (currency != null) {
      _currentCurrency = currency;
    }

    emit(const CoinState.coinChartDataLoading());

    final coinChartResult = await _getCoinChartDataUseCase.call(
      coinId: _currentCoinId!,
      interval: interval,
      currency: _currentCurrency,
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

  void changeCurrency(String currency) {
    _currentCurrency = currency;
    loadChartData(_currentInterval, currency: currency);
  }

  Future<void> loadSupportedVsCurrencies() async {
    final result = await _getSupportedCurrenciesUseCasen();

    result.when(
      success: (List<String> vsCurrencies) {
        _supportedCurrencies = vsCurrencies;
      },
      failure: (error) {
        _supportedCurrencies = ['usd', 'eur', 'gbp', 'jpy', 'btc', 'eth'];
      },
    );
  }

  CoinEntity? get currentCoin => _currentCoin;
}

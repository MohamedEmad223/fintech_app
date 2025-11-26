import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/market/domain/entity/market_coin_entity.dart';
import 'package:fintech_app/features/market/domain/use_cases/get_market_coins_use_case.dart';
import 'package:fintech_app/features/market/domain/use_cases/search_market_coins_use_case.dart';
import 'package:fintech_app/features/market/presentation/controllers/market_state.dart';

class MarketCubit extends Cubit<MarketState> {
  final GetMarketCoinsUseCase _getMarketCoinsUseCase;
  final SearchMarketCoinsUseCase _searchMarketCoinsUseCase;

  MarketCubit(this._getMarketCoinsUseCase, this._searchMarketCoinsUseCase)
    : super(const MarketState.initial());

  int _currentPage = 1;
  List<MarketCoinEntity> _allCoins = [];
  bool _isPaginationLoading = false;

  Future<void> getMarketCoins({bool isRefresh = false}) async {
    if (isRefresh) {
      _currentPage = 1;
      _allCoins.clear();
      emit(const MarketState.loading());
    } else if (_currentPage == 1) {
      emit(const MarketState.loading());
    } else {
      _isPaginationLoading = true;
      emit(MarketState.paginationLoading(_allCoins));
    }

    final result = await _getMarketCoinsUseCase(page: _currentPage);

    switch (result) {
      case Success(data: final coins):
        if (isRefresh) {
          _allCoins = coins;
        } else {
          _allCoins.addAll(coins);
        }
        _currentPage++;
        _isPaginationLoading = false;
        emit(MarketState.success(_allCoins));
      case Failure(apiErrorModel: final error):
        if (_currentPage == 1) {
          emit(MarketState.error(error));
        } else {
          _isPaginationLoading = false;
          emit(MarketState.paginationError(_allCoins, error));
        }
    }
  }

  Future<void> searchMarketCoins(String query) async {
    if (query.isEmpty) {
      if (_allCoins.isNotEmpty) {
        emit(MarketState.success(_allCoins));
      } else {
        getMarketCoins(isRefresh: true);
      }
      return;
    }

    emit(const MarketState.loading());

    final result = await _searchMarketCoinsUseCase(query: query);

    switch (result) {
      case Success(data: final coins):
        emit(MarketState.success(coins));
      case Failure(apiErrorModel: final error):
        emit(MarketState.error(error));
    }
  }
}

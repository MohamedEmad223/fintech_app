import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_error_model.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/domain/entity/trending_coin_entity.dart';
import 'package:fintech_app/features/home/domain/use_cases/get_trending_coins_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_state.dart';
part 'trending_cubit.freezed.dart';

class TrendingCubit extends Cubit<TrendingState> {
  TrendingCubit(this._getTrendingCoinsUseCase) : super(TrendingState.initial());
  final GetTrendingCoinsUseCase _getTrendingCoinsUseCase;

  Future<void> getTrendingCoinsRequest() async {
    emit(const TrendingState.loadingTrendingCoins());
    final result = await _getTrendingCoinsUseCase();

    switch (result) {
      case Success(data: final trendingCoins):
        emit(TrendingState.successTrendingCoins(trendingCoins));
      case Failure(apiErrorModel: final error):
        emit(
          TrendingState.errorTrendingCoins(
            ApiErrorModel(message: error.message ?? ''),
          ),
        );
    }
  }
}

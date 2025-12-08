part of 'trending_cubit.dart';

@freezed
class TrendingState with _$TrendingState {
  const factory TrendingState.initial() = _Initial;

  const factory TrendingState.loadingTrendingCoins() = LoadingTrendingCoins;
  const factory TrendingState.successTrendingCoins(
    List<TrendingCoinEntity> trendingCoins,
  ) = SuccessTrendingCoins;
  const factory TrendingState.errorTrendingCoins(ApiErrorModel error) =
      ErrorTrendingCoins;
}

part of 'home_coin_cubit.dart';

@freezed
class HomeCoinState with _$HomeCoinState {
  const factory HomeCoinState.initial() = _Initial;
  const factory HomeCoinState.loadingCoinHome() = LoadingCoinHome;
  const factory HomeCoinState.successCoinHome(List<HomeCoinEntity> coins) =
      SuccessCoinHome;
  const factory HomeCoinState.errorCoinHome(ApiErrorModel error) =
      ErrorCoinHome;
}

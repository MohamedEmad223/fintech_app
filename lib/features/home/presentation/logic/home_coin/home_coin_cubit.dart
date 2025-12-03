import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_error_model.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/domain/entity/home_coin_entity.dart';
import 'package:fintech_app/features/home/domain/use_cases/get_coins_home_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_coin_state.dart';
part 'home_coin_cubit.freezed.dart';

class HomeCoinCubit extends Cubit<HomeCoinState> {
  HomeCoinCubit(this._getHomeCoinsUseCase) : super(HomeCoinState.initial());
 final GetHomeCoinsUseCase _getHomeCoinsUseCase;

 Future<void> getHomeCoinsRequest() async {
    emit(const HomeCoinState.loadingCoinHome());
    final result = await _getHomeCoinsUseCase();

    switch (result) {
      case Success(data: final homeCoins):
        emit(HomeCoinState.successCoinHome(homeCoins));
      case Failure(apiErrorModel: final error):
        emit(
          HomeCoinState.errorCoinHome(
            ApiErrorModel(message: error.message ?? ''),
          ),
        );
    }
  }
}

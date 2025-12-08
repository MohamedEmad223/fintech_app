import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_error_model.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/domain/entity/crypto_global_entity.dart';
import 'package:fintech_app/features/home/domain/use_cases/get_global_coin_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_crypto_state.dart';
part 'global_crypto_cubit.freezed.dart';

class GlobalCryptoCubit extends Cubit<GlobalCryptoState> {
  GlobalCryptoCubit(this._getGlobalCoinUseCase)
    : super(GlobalCryptoState.initial());
  final GetGlobalCoinUseCase _getGlobalCoinUseCase;

  Future<void> getGlobalCryptoRequest() async {
    emit(const GlobalCryptoState.loadingGlobalCryptoRequest());
    final result = await _getGlobalCoinUseCase();

    switch (result) {
      case Success(data: final globalCrypto):
        emit(GlobalCryptoState.successGlobalCryptoRequest(globalCrypto));
      case Failure(apiErrorModel: final error):
        emit(
          GlobalCryptoState.errorGlobalCryptoRequest(
            ApiErrorModel(message: error.message ?? ''),
          ),
        );
    }
  }
}

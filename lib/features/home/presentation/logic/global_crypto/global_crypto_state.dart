part of 'global_crypto_cubit.dart';

@freezed
class GlobalCryptoState with _$GlobalCryptoState {
  const factory GlobalCryptoState.initial() = _Initial;
  const factory GlobalCryptoState.loadingGlobalCryptoRequest() =
      LoadingGlobalCryptoRequest;
  const factory GlobalCryptoState.successGlobalCryptoRequest(
    CryptoGlobalEntity globalCrypto,
  ) = SuccessGlobalCryptoRequest;
  const factory GlobalCryptoState.errorGlobalCryptoRequest(
    ApiErrorModel error,
  ) = ErrorGlobalCryptoRequest;
}

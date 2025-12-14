import 'package:freezed_annotation/freezed_annotation.dart';

part 'biometric_state.freezed.dart';



@freezed
class BiometricState with _$BiometricState {
  const factory BiometricState.initial() = _Initial;

  const factory BiometricState.loading() = _Loading;

  const factory BiometricState.authenticated(String uid) = _Authenticated;

  const factory BiometricState.error(String message) = _Error;

  const factory BiometricState.notSupported() = _NotSupported;
}
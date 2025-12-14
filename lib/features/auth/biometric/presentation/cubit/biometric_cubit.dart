import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_error_handler.dart';
import 'package:fintech_app/features/auth/biometric/domain/use_cases/authenticate_with_biometrics_use_case.dart';
import 'package:fintech_app/features/auth/biometric/domain/use_cases/check_biometric_support_use_case.dart';
import 'package:fintech_app/features/auth/biometric/presentation/cubit/biometric_state.dart';

class BiometricCubit extends Cubit<BiometricState> {
  final CheckBiometricSupportUseCase _checkBiometricSupportUseCase;
  final AuthenticateWithBiometricsUseCase _authenticateWithBiometricsUseCase;

  BiometricCubit(
    this._checkBiometricSupportUseCase,
    this._authenticateWithBiometricsUseCase,
  ) : super(const BiometricState.initial());

  Future<void> checkBiometricSupport() async {
    try {
      final bool isSupported = await _checkBiometricSupportUseCase();
      if (isClosed) return;

      if (!isSupported) {
        emit(const BiometricState.notSupported());
      }
    } catch (e) {
      if (isClosed) return;
      final failure = ApiErrorHandler.handle(e);
      emit(BiometricState.error(failure.message!));
    }
  }

  Future<void> authenticateWithBiometrics({
    required String email,
    required String password,
    required String localizedReason,
  }) async {
    if (isClosed) return;
    emit(const BiometricState.loading());

    try {
      final user = await _authenticateWithBiometricsUseCase(
        email: email,
        password: password,
        localizedReason: localizedReason,
      );

      if (isClosed) return;

      if (user != null) {
        emit(BiometricState.authenticated(user.uid));
      } else {
        emit(const BiometricState.error('Authentication failed'));
      }
    } on Exception catch (e) {
      if (isClosed) return;
      final failure = ApiErrorHandler.handle(e);
      emit(BiometricState.error(failure.message!));
    }
  }
}

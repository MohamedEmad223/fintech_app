import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_error_handler.dart';
import 'package:fintech_app/features/auth/biometric/domain/use_cases/authenticate_with_biometrics_use_case.dart';
import 'package:fintech_app/features/auth/biometric/domain/use_cases/check_biometric_support_use_case.dart';
import 'package:fintech_app/features/auth/biometric/presentation/cubit/biometric_state.dart';
import 'package:flutter/foundation.dart';

class BiometricCubit extends Cubit<BiometricState> {
  final CheckBiometricSupportUseCase _checkBiometricSupportUseCase;
  final AuthenticateWithBiometricsUseCase _authenticateWithBiometricsUseCase;

  BiometricCubit(
    this._checkBiometricSupportUseCase,
    this._authenticateWithBiometricsUseCase,
  ) : super(const BiometricState.initial());

  /// Check if device supports biometric authentication
  Future<void> checkBiometricSupport() async {
    try {
      final bool isSupported = await _checkBiometricSupportUseCase();

      if (!isSupported) {
        if (!isClosed) {
          emit(const BiometricState.notSupported());
        }
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[BiometricCubit] Error checking biometric support: $e');
      }
      if (!isClosed) {
        final failure = await ApiErrorHandler.handle(e);
        emit(BiometricState.error(failure.message!));
      }
    }
  }

  Future<void> authenticateWithBiometrics({
    required String email,
    required String password,
    required String localizedReason,
  }) async {
    if (!isClosed) {
      emit(const BiometricState.loading());
    }

    try {
      if (kDebugMode) {
        debugPrint('[BiometricCubit] Starting biometric authentication');
      }

      final user = await _authenticateWithBiometricsUseCase(
        email: email,
        password: password,
        localizedReason: localizedReason,
      );

      if (user != null && !isClosed) {
        if (kDebugMode) {
          debugPrint(
            '[BiometricCubit] Authentication successful for user: ${user.email}',
          );
        }
        emit(BiometricState.authenticated(user.uid));
      } else if (!isClosed) {
        emit(const BiometricState.error('Authentication failed'));
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        debugPrint('[BiometricCubit] Authentication error: $e');
      }
      if (!isClosed) {
        final failure = ApiErrorHandler.handle(e);
        emit(BiometricState.error(failure.message!));
      }
    }
  }
}

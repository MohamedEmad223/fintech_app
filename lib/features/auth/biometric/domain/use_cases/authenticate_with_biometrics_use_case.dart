import 'package:firebase_auth/firebase_auth.dart';
import '../repositories/biometric_repo.dart';

class AuthenticateWithBiometricsUseCase {
  final BiometricRepository _repository;

  AuthenticateWithBiometricsUseCase(this._repository);

  Future<User?> call({
    required String email,
    required String password,
    required String localizedReason,
  }) {
    return _repository.authenticateWithBiometrics(
      email: email,
      password: password,
      localizedReason: localizedReason,
    );
  }
}

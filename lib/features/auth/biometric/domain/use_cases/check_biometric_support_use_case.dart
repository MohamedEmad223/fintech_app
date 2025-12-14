import '../repositories/biometric_repo.dart';

class CheckBiometricSupportUseCase {
  final BiometricRepository _repository;

  CheckBiometricSupportUseCase(this._repository);

  Future<bool> call() {
    return _repository.canUseBiometrics();
  }
}

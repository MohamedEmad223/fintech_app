import 'package:local_auth/local_auth.dart';
import '../repositories/biometric_repo.dart';

class GetAvailableBiometricsUseCase {
  final BiometricRepository _repository;

  GetAvailableBiometricsUseCase(this._repository);

  Future<List<BiometricType>> call() {
    return _repository.getAvailableBiometrics();
  }
}

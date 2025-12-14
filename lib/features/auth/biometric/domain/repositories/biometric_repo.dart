import 'package:firebase_auth/firebase_auth.dart';
import 'package:local_auth/local_auth.dart';

abstract class BiometricRepository {
  Future<bool> canUseBiometrics();
  Future<List<BiometricType>> getAvailableBiometrics();
  Future<User?> authenticateWithBiometrics({
    required String email,
    required String password,
    required String localizedReason,
  });
}

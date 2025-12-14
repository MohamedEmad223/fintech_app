import 'package:fintech_app/core/helpers/shared_pref_helper.dart';
import 'package:fintech_app/features/auth/biometric/domain/repositories/biometric_repo.dart';
import 'package:local_auth/local_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';


class BiometricRepositoryImpl implements BiometricRepository {
  final auth.LocalAuthentication _localAuth = auth.LocalAuthentication();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<bool> canUseBiometrics() async {
    try {
      final bool canCheckBiometrics = await _localAuth.canCheckBiometrics;
      final bool isDeviceSupported = await _localAuth.isDeviceSupported();
      return canCheckBiometrics && isDeviceSupported;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<auth.BiometricType>> getAvailableBiometrics() async {
    try {
      return await _localAuth.getAvailableBiometrics();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User?> authenticateWithBiometrics({
    required String email,
    required String password,
    required String localizedReason,
  }) async {
    try {
      final bool authenticated = await _authenticateLocally(localizedReason);
      if (!authenticated) {
        throw Exception('Biometric authentication was cancelled or failed');
      }

      final User? user;
      if (password.isEmpty) {
        user = await _loginWithCachedSession();
      } else {
        user = await _loginWithCredentials(email, password);
      }

      if (user != null) {
        await SharedPrefHelper.saveUserUid(user.uid);
      }
      return user;
    } catch (e) {

      rethrow;
    }
  }

  Future<bool> _authenticateLocally(String reason) async {
    return await _localAuth.authenticate(
      localizedReason: reason,
      biometricOnly: true,
    );
  }

  Future<User?> _loginWithCachedSession() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      return user;
    }
    throw Exception('No active Firebase session. Please log in again.');
  }

  Future<User?> _loginWithCredentials(String email, String password) async {
    final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

}

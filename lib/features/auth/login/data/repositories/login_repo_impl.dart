import 'package:fintech_app/core/helpers/helper_methods.dart';
import 'package:fintech_app/features/auth/login/domain/repositories/login_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepoImpl implements LoginRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<UserCredential> login({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw HelperMethods.handleAuthException(e);
    } catch (e) {
      throw Exception('Login failed: ${e.toString()}');
    }
  }
}

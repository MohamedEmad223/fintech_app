import 'package:fintech_app/core/helpers/helper_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepo {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

   Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = userCredential.user;
      if (user == null) {
        throw Exception('User not found after sign-in');
      }

      return user;
    } on FirebaseAuthException catch (e) {
      throw HelperMethods.handleAuthException(e);
    } catch (e) {
      throw Exception('Login failed: ${e.toString()}');
    }
  }

  /// Handle Firebase auth exceptions and return user-friendly messages

}

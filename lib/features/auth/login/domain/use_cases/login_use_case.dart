import 'package:firebase_auth/firebase_auth.dart';
import '../repositories/login_repo.dart';

class LoginUseCase {
  final LoginRepository _repository;

  LoginUseCase(this._repository);

  Future<UserCredential> call({
    required String email,
    required String password,
  }) {
    return _repository.login(email: email, password: password);
  }
}

import 'package:fintech_app/core/networking/firbase_services/firebase_results.dart';
import 'package:fintech_app/features/auth/register/data/models/create_user_request_body.dart';
import 'package:fintech_app/features/auth/register/data/models/register_request_body.dart'; // Fixed import to data layer model for consistency with repo
import 'package:firebase_auth/firebase_auth.dart';
import '../repositories/register_repo.dart';

class RegisterUseCase {
  final RegisterRepository _repository;

  RegisterUseCase(this._repository);

  Future<FirebaseResult<UserCredential>> createUser(
    RegisterUserRequestBody body,
  ) {
    return _repository.createUser(body);
  }

  Future<FirebaseResult<String>> storeUser({
    required UserCredential user,
    required CreateUserRequestBody createUserRequestBody,
  }) {
    return _repository.storeUser(
      user: user,
      createUserRequestBody: createUserRequestBody,
    );
  }
}

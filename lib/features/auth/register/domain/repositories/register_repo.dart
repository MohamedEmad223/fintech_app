import 'package:fintech_app/core/networking/firbase_services/firebase_results.dart';
import 'package:fintech_app/features/auth/register/data/models/create_user_request_body.dart';
import 'package:fintech_app/features/auth/register/data/models/register_request_body.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class RegisterRepository {
  Future<FirebaseResult<UserCredential>> createUser(
    RegisterUserRequestBody user,
  );
  Future<FirebaseResult<String>> storeUser({
    required UserCredential user,
    required CreateUserRequestBody createUserRequestBody,
  });
}

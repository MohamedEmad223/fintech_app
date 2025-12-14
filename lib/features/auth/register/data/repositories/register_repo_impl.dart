import 'package:fintech_app/core/networking/firbase_services/firebase_error_handler.dart';
import 'package:fintech_app/core/networking/firbase_services/firebase_results.dart';
import 'package:fintech_app/core/networking/firbase_services/firebase_service.dart';
import 'package:fintech_app/features/auth/register/data/models/create_user_request_body.dart';
import 'package:fintech_app/features/auth/register/data/models/register_request_body.dart';
import 'package:fintech_app/features/auth/register/domain/repositories/register_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;

class RegisterRepoImpl implements RegisterRepository {
  final FirebaseService _firebaseService;
  RegisterRepoImpl(this._firebaseService);

  @override
  Future<FirebaseResult<UserCredential>> createUser(
    RegisterUserRequestBody user,
  ) async {
    try {
      final credential = await _firebaseService.createUser(user);
      return FirebaseResult.success(credential);
    } on FirebaseAuthException catch (e) {
      return FirebaseResult.failure(FirebaseErrorHandler.errorHandle(e.code));
    } catch (e) {
      return const FirebaseResult.failure('Email is already in use');
    }
  }

  Future<FirebaseResult<String>> storeUser({
    required UserCredential user,
    required CreateUserRequestBody createUserRequestBody,
  }) async {
    try {
      await _firebaseService.storeUser(
        user: user,
        createUserRequestBody: createUserRequestBody,
      );
      return const FirebaseResult.success('Register User Successfully');
    } on firebase_core.FirebaseException catch (e) {
      return FirebaseResult.failure(e.message ?? 'User Not Stored');
    } catch (e) {
      return FirebaseResult.failure(e.toString());
    }
  }
}

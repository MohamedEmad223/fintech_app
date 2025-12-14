import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/helpers/shared_pref_helper.dart';
import 'package:fintech_app/core/networking/firbase_services/firebase_results.dart';
import 'package:fintech_app/core/utils/app_constants.dart';
import 'package:fintech_app/features/auth/register/data/models/create_user_request_body.dart';
import 'package:fintech_app/features/auth/register/data/models/register_request_body.dart';
import 'package:fintech_app/features/auth/register/data/repos/register_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerRepo) : super(RegisterState.initial());

  final RegisterRepo _registerRepo;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

 void register() async {
  emit(const RegisterState.loading());

  try {
    final response = await _registerRepo.createUser(
      RegisterUserRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );

    response.when(
      success: (user) async {
        await SharedPrefHelper.saveUserUid(user.user!.uid);
        isLoggedInUser = true;
        await _storeUser(user); 
      },
      failure: (error) {
        emit(RegisterState.error(error));
      },
    );
  } catch (e) {
    emit(RegisterState.error(e.toString()));
  }
}

Future<void> _storeUser(UserCredential user) async {
  final response = await _registerRepo.storeUser(
    user: user,
    createUserRequestBody: CreateUserRequestBody(
      uid: user.user!.uid,
      firstName: firstNameController.text.trim(),
      lastName: lastNameController.text.trim(),
      email: emailController.text.trim(),
      phoneNumber: phoneController.text.trim(),
    ),
  );

  response.when(
    success: (message) {
      clearControllers();
      emit(RegisterState.success(message));
    },
    failure: (error) {
      emit(RegisterState.error(error));
    },
  );
}

void clearControllers() {
  firstNameController.clear();
  lastNameController.clear();
  emailController.clear();
  phoneController.clear();
  passwordController.clear();
  confirmPasswordController.clear();
}

}

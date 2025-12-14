import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/helpers/shared_pref_helper.dart';
import 'package:fintech_app/core/utils/app_constants.dart';
import 'package:fintech_app/features/auth/login/domain/use_cases/login_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUseCase) : super(const LoginState.initial());

  final LoginUseCase _loginUseCase;

  Future<void> login({required String email, required String password}) async {
    try {
      emit(const LoginState.loading());
      final userCredential = await _loginUseCase(
        email: email,
        password: password,
      );
      isLoggedInUser = true;
      if (userCredential.user != null) {
        await SharedPrefHelper.saveUserUid(userCredential.user!.uid);
        emit(LoginState.success(userCredential.user!.email ?? email));
      } else {
        emit(const LoginState.error('Login failed: User is null'));
      }
    } catch (e) {
      emit(LoginState.error(e.toString()));
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/helpers/shared_pref_helper.dart';
import 'package:fintech_app/core/utils/app_constants.dart';
import 'package:fintech_app/features/auth/login/data/repos/login_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  final LoginRepo _loginRepo;

  Future<void> login({required String email, required String password}) async {
    try {
      emit(const LoginState.loading());
      final user = await _loginRepo.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      isLoggedInUser = true;
      await SharedPrefHelper.saveUserUid(user.uid);
      emit(LoginState.success(user.email ?? email));
    } catch (e) {
      emit(LoginState.error(e.toString()));
    }
  }
}

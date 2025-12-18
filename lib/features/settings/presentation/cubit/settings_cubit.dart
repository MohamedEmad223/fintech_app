import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_error_handler.dart';
import 'package:fintech_app/features/settings/domain/use_cases/get_user_profile_use_case.dart';
import 'package:fintech_app/features/settings/domain/use_cases/logout_use_case.dart';
import 'package:fintech_app/features/settings/presentation/cubit/settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final GetUserProfileUseCase _getUserProfileUseCase;
  final LogoutUseCase _logoutUseCase;

  SettingsCubit(this._getUserProfileUseCase, this._logoutUseCase)
    : super(const SettingsState.initial());

  /// Fetch user profile
  Future<void> fetchUserProfile() async {
    try {
      emit(const SettingsState.loading());
      final userProfile = await _getUserProfileUseCase();
      emit(SettingsState.loaded(userProfile));
    } catch (e) {
      final failure = ApiErrorHandler.handle(e);
      emit(SettingsState.error(failure.message ?? 'Unknown error'));
    }
  }

  /// Refresh user profile data without showing loading overlay
  Future<void> refreshUserProfile() async {
    try {
      final userProfile = await _getUserProfileUseCase();
      emit(SettingsState.loaded(userProfile));
    } catch (e) {
      final failure = ApiErrorHandler.handle(e);
      emit(SettingsState.error(failure.message ?? 'Unknown error'));
    }
  }

  /// Handle logout
  Future<void> logout() async {
    try {
      emit(const SettingsState.logoutLoading());
      await _logoutUseCase();
      emit(const SettingsState.logoutSuccess());
    } catch (e) {
      final failure = ApiErrorHandler.handle(e);
      emit(SettingsState.logoutError(failure.message ?? 'Logout failed'));
    }
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fintech_app/features/settings/domain/entities/user_profile_entity.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = Initial;
  const factory SettingsState.loading() = Loading;
  const factory SettingsState.loaded(UserProfileEntity userProfile) = Loaded;
  const factory SettingsState.error(String message) = Error;
  const factory SettingsState.logoutLoading() = LogoutLoading;
  const factory SettingsState.logoutSuccess() = LogoutSuccess;
  const factory SettingsState.logoutError(String message) = LogoutError;
}

import 'package:fintech_app/features/settings/domain/entities/user_profile_entity.dart';

abstract class SettingsRepo {
  Future<UserProfileEntity> getUserProfile();
  Future<void> logout();
}

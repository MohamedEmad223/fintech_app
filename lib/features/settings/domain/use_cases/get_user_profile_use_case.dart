import 'package:fintech_app/features/settings/domain/entities/user_profile_entity.dart';
import 'package:fintech_app/features/settings/domain/repositories/settings_repo.dart';

class GetUserProfileUseCase {
  final SettingsRepo _settingsRepo;

  GetUserProfileUseCase(this._settingsRepo);

  Future<UserProfileEntity> call() => _settingsRepo.getUserProfile();
}

import 'package:fintech_app/features/settings/domain/repositories/settings_repo.dart';

class LogoutUseCase {
  final SettingsRepo _settingsRepo;

  LogoutUseCase(this._settingsRepo);

  Future<void> call() => _settingsRepo.logout();
}

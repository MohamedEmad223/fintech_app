import 'package:fintech_app/features/settings/data/data_source/settings_remote_data_source.dart';
import 'package:fintech_app/features/settings/data/models/user_profile_model.dart';
import 'package:fintech_app/features/settings/domain/entities/user_profile_entity.dart';
import 'package:fintech_app/features/settings/domain/repositories/settings_repo.dart';

class SettingsRepoImpl implements SettingsRepo {
  final SettingsRemoteDataSource _remoteDataSource;

  SettingsRepoImpl(this._remoteDataSource);

  @override
  Future<UserProfileEntity> getUserProfile() async {
    final model = await _remoteDataSource.getUserProfile();
    return model.toEntity();
  }

  @override
  Future<void> logout() async {
    await _remoteDataSource.logout();
  }
}

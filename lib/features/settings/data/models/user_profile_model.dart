import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fintech_app/features/settings/domain/entities/user_profile_entity.dart';

part 'user_profile_model.freezed.dart';

@freezed
abstract class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String firstName,
    required String lastName,
    required String profileImagePath,
    required String email,
  }) = _UserProfileModel;
}

extension UserProfileModelMapper on UserProfileModel {
  UserProfileEntity toEntity() {
    return UserProfileEntity(
      firstName: firstName,
      lastName: lastName,
      profileImagePath: profileImagePath,
      email: email,
    );
  }
}

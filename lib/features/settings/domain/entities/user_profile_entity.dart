import 'package:equatable/equatable.dart';

class UserProfileEntity extends Equatable {
  final String firstName;
  final String lastName;
  final String profileImagePath;
  final String email;

  const UserProfileEntity({
    required this.firstName,
    required this.lastName,
    required this.profileImagePath,
    required this.email,
  });

  @override
  List<Object?> get props => [firstName, lastName, profileImagePath, email];
}

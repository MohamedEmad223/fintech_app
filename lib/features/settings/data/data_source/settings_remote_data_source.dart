import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fintech_app/core/helpers/shared_pref_helper.dart';
import 'package:fintech_app/core/helpers/shared_pref_keys.dart';
import 'package:fintech_app/core/utils/app_constants.dart';
import 'package:fintech_app/features/settings/data/models/user_profile_model.dart';

class SettingsRemoteDataSource {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  SettingsRemoteDataSource({FirebaseFirestore? firestore, FirebaseAuth? auth})
    : _firestore = firestore ?? FirebaseFirestore.instance,
      _auth = auth ?? FirebaseAuth.instance;

  Future<UserProfileModel> getUserProfile() async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        throw Exception('User not authenticated');
      }

      final userDoc = await _firestore
          .collection('users')
          .doc(currentUser.uid)
          .get();

      if (!userDoc.exists) {
        final displayName = currentUser.displayName ?? 'User';
        final nameParts = displayName.split(' ');
        return UserProfileModel(
          firstName: nameParts.isNotEmpty ? nameParts[0] : 'User',
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          profileImagePath: currentUser.photoURL ?? '',
          email: currentUser.email ?? '',
        );
      }
      final data = userDoc.data();
      final displayName =
          data?['firstName'] ?? currentUser.displayName ?? 'User';
      final lastName = data?['lastName'] ?? '';
      return UserProfileModel(
        firstName: displayName,
        lastName: lastName,
        profileImagePath:
            data?['profileImagePath'] ?? currentUser.photoURL ?? '',
        email: data?['email'] ?? currentUser.email ?? '',
      );
    } catch (e) {
      throw Exception('Failed to fetch user profile: $e');
    }
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
      isLoggedInUser = false;
      await SharedPrefHelper.removeData(SharedPrefKeys.uid);
    } catch (e) {
      throw Exception('Failed to logout: $e');
    }
  }
}

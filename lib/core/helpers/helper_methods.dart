import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelperMethods {
  HelperMethods._(); 

  static void success(
    BuildContext context,
    String message,
  ) {
    _show(
      context: context,
      message: message,
      icon: Icons.check_circle_outline,
      backgroundColor: Colors.green.shade600,
    );
  }

  static void error(
    BuildContext context,
    String message,
  ) {
    _show(
      context: context,
      message: message,
      icon: Icons.error_outline,
      backgroundColor: Colors.red.shade600,
    );
  }

  static void _show({
    required BuildContext context,
    required String message,
    required IconData icon,
    required Color backgroundColor,
  }) {
    final messenger = ScaffoldMessenger.of(context);
    messenger.clearSnackBars();

    messenger.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: backgroundColor,
        margin: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 20.h,
        ),
        duration: const Duration(seconds: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        content: Row(
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

   static String handleAuthException(FirebaseAuthException e) {
    return switch (e.code) {
      'user-not-found' =>
        'No account found with this email. Please register first.',
      'wrong-password' => 'Incorrect password. Please try again.',
      'invalid-email' => 'Please enter a valid email address.',
      'user-disabled' => 'This account has been disabled.',
      'too-many-requests' =>
        'Too many login attempts. Please try again later.',
      'network-request-failed' =>
        'Network error. Please check your connection.',
      _ => 'Login failed: ${e.message ?? e.code}',
    };
  }
}

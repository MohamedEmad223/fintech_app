class FirebaseErrorHandler {
  static String errorHandle(String error) {
    switch (error) {
      case 'email-already-in-use':
      case 'ERROR_EMAIL_ALREADY_IN_USE':
      case 'account-exists-with-different-credential':
      case 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL':
        return 'The account already exists for that email.';
      case 'weak-password':
      case 'ERROR_WEAK_PASSWORD':
        return 'The password provided is too weak.';
      case 'invalid-email':
      case 'ERROR_INVALID_EMAIL':
        return 'The email address is malformed.';
      default:
        return 'Check your internet connection';
    }
  }
}

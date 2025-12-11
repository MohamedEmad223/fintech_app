import 'dart:developer';

class ParseErrorLogger {
  void logError(
    Object e,
    StackTrace s,
    dynamic requestOptions,
    dynamic response,
  ) {
    // لو حبيت تقدر تطبع الأخطاء للـ debug
    log('ParseErrorLogger caught error: $e');
    log(s.toString());
  }
}

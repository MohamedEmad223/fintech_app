import 'dart:developer';

class ParseErrorLogger {
  void logError(
    Object e,
    StackTrace s,
    dynamic requestOptions,
    dynamic response,
  ) {
    log('ParseErrorLogger caught error: $e');
    log(s.toString());
  }
}

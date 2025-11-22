import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'dart:io';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addDioHeaders();
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'api_key': 'YOUR_API_KEY',
      'Content-Type': 'application/json',
    };
  }

  static void addDioInterceptors() {
    dio?.interceptors.addAll({
      RetryInterceptor(
        dio: dio!,
        retries: 2,
        retryDelays: generateExponentialDelays(),
        retryEvaluator: (DioException error, int attempt) {
          if (error.type == DioExceptionType.unknown ||
              error.error is HttpException) {
            return true;
          }
          return false;
        },
      ),
      if (kDebugMode)
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
    });
  }
}

List<Duration> generateExponentialDelays() {
  const int maxRetries = 50;
  const int initialDelaySeconds = 1;
  const int maxDelaySeconds = 300;
  final List<Duration> delays = [];
  for (int i = 0; i < maxRetries; i++) {
    final int delaySeconds = initialDelaySeconds * (1 << i); // 2^i
    delays.add(
      Duration(
        seconds: delaySeconds > maxDelaySeconds
            ? maxDelaySeconds
            : delaySeconds,
      ),
    );
  }
  return delays;
}

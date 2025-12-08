import 'dart:isolate';

import 'package:fintech_app/features/buy/data/models/coin_list_response_model.dart';

/// Isolate worker for parsing large JSON responses
class BuyIsolateWorker {
  /// Parse coins list JSON in isolate to avoid UI jank
  static Future<List<CoinListItemModel>> parseCoinsListJson(
    List<dynamic> jsonList,
  ) async {
    final receivePort = ReceivePort();

    await Isolate.spawn(
      _parseCoinsListIsolate,
      _IsolateData(sendPort: receivePort.sendPort, jsonData: jsonList),
    );

    final result = await receivePort.first as List<CoinListItemModel>;
    return result;
  }

  /// Parse exchange rate JSON in isolate
  static Future<Map<String, Map<String, double>>> parseExchangeRateJson(
    Map<String, dynamic> json,
  ) async {
    final receivePort = ReceivePort();

    await Isolate.spawn(
      _parseExchangeRateIsolate,
      _IsolateData(sendPort: receivePort.sendPort, jsonData: json),
    );

    final result = await receivePort.first as Map<String, Map<String, double>>;
    return result;
  }

  /// Isolate worker for coins list parsing
  static void _parseCoinsListIsolate(_IsolateData data) {
    final jsonList = data.jsonData as List<dynamic>;
    final models = jsonList
        .map((json) => CoinListItemModel.fromJson(json as Map<String, dynamic>))
        .toList();

    data.sendPort.send(models);
  }

  /// Isolate worker for exchange rate parsing
  static void _parseExchangeRateIsolate(_IsolateData data) {
    final json = data.jsonData as Map<String, dynamic>;
    final result = <String, Map<String, double>>{};

    json.forEach((key, value) {
      if (value is Map<String, dynamic>) {
        result[key] = Map<String, double>.from(value);
      }
    });

    data.sendPort.send(result);
  }
}

/// Data class for isolate communication
class _IsolateData {
  final SendPort sendPort;
  final dynamic jsonData;

  _IsolateData({required this.sendPort, required this.jsonData});
}

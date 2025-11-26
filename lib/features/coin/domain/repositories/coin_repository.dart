import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_chart_entity.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_entity.dart';

abstract class CoinRepository {
  Future<ApiResult<CoinEntity>> getCoinDetails({required String coinId});

  Future<ApiResult<CoinChartEntity>> getCoinChartData({
    required String coinId,
    required String days,
  });
}

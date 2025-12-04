import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/domain/entity/trending_coin_entity.dart';

abstract class GetTrendingCoinsRepo {
  Future<ApiResult<List<TrendingCoinEntity>>> getTrendingCoinsRequest();
}

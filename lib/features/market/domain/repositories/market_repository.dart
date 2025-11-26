import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/market/domain/entity/market_coin_entity.dart';

abstract class MarketRepository {
  Future<ApiResult<List<MarketCoinEntity>>> getMarketCoins({required int page});

  Future<ApiResult<List<MarketCoinEntity>>> searchMarketCoins({
    required String query,
  });
}

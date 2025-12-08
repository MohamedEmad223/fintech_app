import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/domain/entity/trending_coin_entity.dart';
import 'package:fintech_app/features/home/domain/repos/get_trending_coins_repo.dart';

class GetTrendingCoinsUseCase {
  final GetTrendingCoinsRepo _getTrendingCoinsRepo;

  GetTrendingCoinsUseCase(this._getTrendingCoinsRepo);

  Future<ApiResult<List<TrendingCoinEntity>>> call() {
    return _getTrendingCoinsRepo.getTrendingCoinsRequest();
  }
}

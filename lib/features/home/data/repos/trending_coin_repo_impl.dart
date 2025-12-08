import 'package:fintech_app/core/networking/api_error_handler.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/data/data_source/home_data_source.dart';
import 'package:fintech_app/features/home/data/mappers/trending_coin_mapper.dart';
import 'package:fintech_app/features/home/domain/entity/trending_coin_entity.dart';
import 'package:fintech_app/features/home/domain/repos/get_trending_coins_repo.dart';

class TrendingCoinRepoImpl implements GetTrendingCoinsRepo {
  final HomeDataSource _homeDataSource;

  TrendingCoinRepoImpl(this._homeDataSource);

  @override
  Future<ApiResult<List<TrendingCoinEntity>>> getTrendingCoinsRequest() async {
    try {
      final response = await _homeDataSource.getTrendingCoinsRequest();
      final entities = response.toEntity();
      return ApiResult.success(entities);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

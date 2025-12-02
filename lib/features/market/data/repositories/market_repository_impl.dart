import 'package:fintech_app/core/networking/api_error_handler.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/market/data/data_source/market_remote_data_source.dart';
import 'package:fintech_app/features/market/data/mappers/market_mapper.dart';
import 'package:fintech_app/features/market/data/models/params/market_coins_params.dart';
import 'package:fintech_app/features/market/domain/entity/market_coin_entity.dart';
import 'package:fintech_app/features/market/domain/repositories/market_repository.dart';

class MarketRepositoryImpl implements MarketRepository {
  final MarketRemoteDataSource _marketRemoteDataSource;

  MarketRepositoryImpl(this._marketRemoteDataSource);

  @override
  Future<ApiResult<List<MarketCoinEntity>>> getMarketCoins({
    required int page,
  }) async {
    try {
      final response = await _marketRemoteDataSource.getMarketData(
        MarketCoinsParams(
          vsCurrency: 'usd',
          order: 'market_cap_desc',
          perPage: 20,
          page: page,
        ).toMap(),
      );
      final entities = response.map((model) => model.toEntity()).toList();
      return ApiResult.success(entities);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<List<MarketCoinEntity>>> searchMarketCoins({
    required String query,
  }) async {
    try {
      final response = await _marketRemoteDataSource.getMarketSearchData(query);
      final entities = response.coins.map((coin) => coin.toEntity()).toList();
      return ApiResult.success(entities);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

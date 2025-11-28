import 'package:fintech_app/core/networking/api_error_handler.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/coin/data/data_source/coins_remote_data_source.dart';
import 'package:fintech_app/features/coin/data/mappers/coin_mapper.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_chart_entity.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_entity.dart';
import 'package:fintech_app/features/coin/domain/repositories/coin_repository.dart';

class CoinRepositoryImpl implements CoinRepository {
  final CoinsRemoteDataSource _coinsRemoteDataSource;

  CoinRepositoryImpl(this._coinsRemoteDataSource);

  @override
  Future<ApiResult<CoinEntity>> getCoinDetails({required String coinId}) async {
    try {
      final response = await _coinsRemoteDataSource.getCoinDetails(
        coinId: coinId,
      );
      final entity = response.toEntity();
      return ApiResult.success(entity);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<CoinChartEntity>> getCoinChartData({
    required String coinId,
    required String interval,
  }) async {
    try {
      final response = await _coinsRemoteDataSource.getCoinChartData(
        coinId: coinId,
        vsCurrency: 'usd',
        days: interval,
      );
      final entity = response.toEntity();
      return ApiResult.success(entity);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

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
      print('🔵 Fetching coin details for: $coinId');
      final response = await _coinsRemoteDataSource.getCoinDetails(
        coinId: coinId,
      );
      print('✅ Response received, type: ${response.runtimeType}');
      print('🔄 Starting entity mapping...');
      final entity = response.toEntity();
      print('✅ Entity mapped successfully: ${entity.name}');
      return ApiResult.success(entity);
    } catch (error, stackTrace) {
      print('❌ Error in getCoinDetails: $error');
      print('❌ Error type: ${error.runtimeType}');
      print('📋 Stack trace:\n$stackTrace');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<CoinChartEntity>> getCoinChartData({
    required String coinId,
    required String interval,
    String currency = 'usd',
  }) async {
    try {
      print('🔵 Fetching chart data for: $coinId, interval: $interval, currency: $currency');
      final response = await _coinsRemoteDataSource.getCoinChartData(
        coinId: coinId,
        vsCurrency: currency,
        days: interval,
      );
      print('✅ Chart response received successfully');
      final entity = response.toEntity();
      print('✅ Chart entity mapped with ${entity.prices.length} price points');
      return ApiResult.success(entity);
    } catch (error, stackTrace) {
      print('❌ Error in getCoinChartData: $error');
      print('📋 Stack trace:\n$stackTrace');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<List<String>>> getSupportedVsCurrencies() async{
    try {
      final response = await _coinsRemoteDataSource.getSupportedVsCurrencies();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }

  }
}

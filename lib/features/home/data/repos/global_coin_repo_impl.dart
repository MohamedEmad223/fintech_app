import 'package:fintech_app/core/networking/api_error_handler.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/data/data_source/home_data_source.dart';
import 'package:fintech_app/features/home/data/mappers/crypto_global_mapper.dart';
import 'package:fintech_app/features/home/domain/entity/crypto_global_entity.dart';
import 'package:fintech_app/features/home/domain/repos/get_global_coin_repo.dart';

class GlobalCoinRepoImpl implements GetGlobalCoinRepo {
  final HomeDataSource _homeDataSource;

  GlobalCoinRepoImpl(this._homeDataSource);

  @override
  Future<ApiResult<CryptoGlobalEntity>> getGlobalCoinRequest() async {
    try {
      final response = await _homeDataSource.getGlobalCryptoRequest();
      return ApiResult.success(response.toEntity());
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
  
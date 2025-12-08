import 'package:fintech_app/core/networking/api_error_handler.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/data/data_source/home_data_source.dart';
import 'package:fintech_app/features/home/data/mappers/home_coin_mapper.dart';
import 'package:fintech_app/features/home/domain/entity/home_coin_entity.dart';
import 'package:fintech_app/features/home/domain/repos/home_coin_repo.dart';

class HomeCoinRepoImpl implements HomeCoinRepo {
  final HomeDataSource _homeDataSource;

  HomeCoinRepoImpl(this._homeDataSource);

  @override
  Future<ApiResult<List<HomeCoinEntity>>> getCoinsMarkets({
    required String vsCurrency,
  }) async {
    try {
      final response = await _homeDataSource.getCoinsMarkets(
        vsCurrency: vsCurrency,
      );
      return ApiResult.success(
        response.map((coinModel) => coinModel.toEntity()).toList(),
      );
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  

  
}

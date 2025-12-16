import 'package:fintech_app/core/networking/api_error_handler.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/portfolio/data/data_source/portfolio_remote_data_source.dart';
import 'package:fintech_app/features/portfolio/domain/entity/portfolio_entity.dart';
import 'package:fintech_app/features/portfolio/domain/repositories/portfolio_repo.dart';

class PortfolioRepoImpl implements PortfolioRepo {
  final PortfolioRemoteDataSource _portfolioRemoteDataSource;

  PortfolioRepoImpl(this._portfolioRemoteDataSource);

  @override
  Future<ApiResult<PortfolioEntity>> getPortfolioData({
    required String ids,
    required String vsCurrencies,
  }) async {
    try {
      final response = await _portfolioRemoteDataSource.getSimplePrice(
        ids,
        vsCurrencies,
      );

      final coins = response.coins?.map((e) {
        return CoinEntity(name: e.name, price: e.usd);
      }).toList();

      return ApiResult.success(PortfolioEntity(coins: coins ?? []));
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}

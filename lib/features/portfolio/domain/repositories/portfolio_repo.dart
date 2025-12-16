import '../entity/portfolio_entity.dart';
import '../../../../core/networking/api_result.dart';

abstract class PortfolioRepo {
  Future<ApiResult<PortfolioEntity>> getPortfolioData({
    required String ids,
    required String vsCurrencies,
  });
}

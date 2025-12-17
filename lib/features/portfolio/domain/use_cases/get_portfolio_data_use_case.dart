import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/portfolio/domain/entity/portfolio_entity.dart';
import 'package:fintech_app/features/portfolio/domain/repositories/portfolio_repo.dart';

class GetPortfolioDataUseCase {
  final PortfolioRepo _portfolioRepo;

  GetPortfolioDataUseCase(this._portfolioRepo);

  Future<ApiResult<PortfolioEntity>> call({
    required String ids,
    required String vsCurrencies,
  }) async {
    return await _portfolioRepo.getPortfolioData(
      ids: ids,
      vsCurrencies: vsCurrencies,
    );
  }
}

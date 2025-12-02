import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/market/domain/entity/market_coin_entity.dart';
import 'package:fintech_app/features/market/domain/repositories/market_repository.dart';

class SearchMarketCoinsUseCase {
  final MarketRepository _marketRepository;

  SearchMarketCoinsUseCase(this._marketRepository);

  Future<ApiResult<List<MarketCoinEntity>>> call({
    required String query,
  }) async {
    return await _marketRepository.searchMarketCoins(query: query);
  }
}

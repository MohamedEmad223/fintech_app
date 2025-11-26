import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/market/domain/entity/market_coin_entity.dart';
import 'package:fintech_app/features/market/domain/repositories/market_repository.dart';

class GetMarketCoinsUseCase {
  final MarketRepository _marketRepository;

  GetMarketCoinsUseCase(this._marketRepository);

  Future<ApiResult<List<MarketCoinEntity>>> call({required int page}) async {
    return await _marketRepository.getMarketCoins(page: page);
  }
}

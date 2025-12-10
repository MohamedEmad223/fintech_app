import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/buy/domain/entity/coin_list_item_entity.dart';
import 'package:fintech_app/features/buy/domain/repositories/buy_repository.dart';

class GetCoinsListUseCase {
  final BuyRepository _repository;

  GetCoinsListUseCase(this._repository);

  Future<ApiResult<List<CoinListItemEntity>>> call() async {
    return await _repository.getCoinsList();
  }
}

import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/domain/entity/home_coin_entity.dart';
import 'package:fintech_app/features/home/domain/repos/home_coin_repo.dart';

class GetHomeCoinsUseCase {
  final HomeCoinRepo _homeCoinRepo;

  GetHomeCoinsUseCase(this._homeCoinRepo);

  Future<ApiResult<List<HomeCoinEntity>>> call({String vsCurrency = 'usd'}) {
    return _homeCoinRepo.getCoinsMarkets(vsCurrency: vsCurrency);
  }
}

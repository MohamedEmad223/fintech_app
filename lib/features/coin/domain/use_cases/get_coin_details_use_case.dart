import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_entity.dart';
import 'package:fintech_app/features/coin/domain/repositories/coin_repository.dart';

class GetCoinDetailsUseCase {
  final CoinRepository _coinRepository;

  GetCoinDetailsUseCase(this._coinRepository);

  Future<ApiResult<CoinEntity>> call({required String coinId}) async {
    return await _coinRepository.getCoinDetails(coinId: coinId);
  }
}

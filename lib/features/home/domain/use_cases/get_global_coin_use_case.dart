import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/domain/entity/crypto_global_entity.dart';
import 'package:fintech_app/features/home/domain/repos/get_global_coin_repo.dart';

class GetGlobalCoinUseCase {
  final GetGlobalCoinRepo _getGlobalCoinRepo;

  GetGlobalCoinUseCase(this._getGlobalCoinRepo);

  Future<ApiResult<CryptoGlobalEntity>> call() {
    return _getGlobalCoinRepo.getGlobalCoinRequest();
  }
}

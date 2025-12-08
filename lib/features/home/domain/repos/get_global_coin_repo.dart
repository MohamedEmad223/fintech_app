import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/domain/entity/crypto_global_entity.dart';

abstract class GetGlobalCoinRepo {
  Future<ApiResult<CryptoGlobalEntity>> getGlobalCoinRequest();
}

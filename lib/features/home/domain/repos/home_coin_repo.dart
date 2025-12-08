import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/home/domain/entity/home_coin_entity.dart';

abstract class HomeCoinRepo {
  Future<ApiResult<List<HomeCoinEntity>>> getCoinsMarkets({
    required String vsCurrency,
  });
}

import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/coin/domain/entity/coin_chart_entity.dart';
import 'package:fintech_app/features/coin/domain/repositories/coin_repository.dart';

class GetCoinChartDataUseCase {
  final CoinRepository _coinRepository;

  GetCoinChartDataUseCase(this._coinRepository);

  Future<ApiResult<CoinChartEntity>> call({
    required String coinId,
    required String interval,
  }) async {
    return await _coinRepository.getCoinChartData(coinId: coinId, interval: interval);
  }
}

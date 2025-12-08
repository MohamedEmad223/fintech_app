import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/buy/domain/entity/exchange_rate_entity.dart';
import 'package:fintech_app/features/buy/domain/repositories/buy_repository.dart';

class GetExchangeRateUseCase {
  final BuyRepository _repository;

  GetExchangeRateUseCase(this._repository);

  Future<ApiResult<ExchangeRateEntity>> call({
    required String fromCurrency,
    required String toCurrency,
  }) async {
    return await _repository.getExchangeRate(
      fromCurrency: fromCurrency,
      toCurrency: toCurrency,
    );
  }
}

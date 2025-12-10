import '../../../../core/networking/api_result.dart';
import '../entity/coin_list_item_entity.dart';
import '../entity/exchange_rate_entity.dart';

abstract class BuyRepository {
  /// Get exchange rate between two currencies
  Future<ApiResult<ExchangeRateEntity>> getExchangeRate({
    required String fromCurrency,
    required String toCurrency,
  });

  /// Get list of all available coins
  Future<ApiResult<List<CoinListItemEntity>>> getCoinsList();
}

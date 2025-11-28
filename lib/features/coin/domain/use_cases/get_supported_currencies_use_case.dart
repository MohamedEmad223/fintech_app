import '../../../../core/networking/api_result.dart';
import '../repositories/coin_repository.dart';

class GetSupportedCurrenciesUseCase {
  final CoinRepository _coinRepository;

  GetSupportedCurrenciesUseCase(this._coinRepository);

  Future<ApiResult<List<String>>> call() async {
    return await _coinRepository.getSupportedVsCurrencies();
  }
}

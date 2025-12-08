import '../../domain/entity/exchange_rate_entity.dart';

class BuyMapper {
  /// Convert API response to ExchangeRateEntity
  /// API returns: {"ethereum": {"usd": 1234.56}}
  static ExchangeRateEntity mapToExchangeRateEntity({
    required Map<String, Map<String, double>> apiResponse,
    required String fromCurrency,
    required String toCurrency,
  }) {
    // For crypto to fiat: get the rate directly
    // For fiat to crypto: we need to invert the rate

    final coinId = getCoinId(toCurrency);
    if (coinId == null) {
      throw Exception('Unsupported cryptocurrency: $toCurrency');
    }

    final vsCurrency = fromCurrency.toLowerCase();

    if (!apiResponse.containsKey(coinId)) {
      throw Exception('Coin $coinId not found in API response');
    }

    final coinRates = apiResponse[coinId]!;
    if (!coinRates.containsKey(vsCurrency)) {
      throw Exception('Currency $vsCurrency not found for $coinId');
    }

    // Fiat to Crypto (e.g., USD to ETH)
    final cryptoPrice = coinRates[vsCurrency]!;
    final rate = 1 / cryptoPrice; // Invert to get crypto per fiat unit

    return ExchangeRateEntity(
      fromCurrency: fromCurrency.toUpperCase(),
      toCurrency: toCurrency.toUpperCase(),
      rate: rate,
      timestamp: DateTime.now(),
    );
  }

  /// Map currency symbol to CoinGecko coin ID
  static String? getCoinId(String currency) {
    final currencyLower = currency.toLowerCase();
    switch (currencyLower) {
      case 'btc':
      case 'bitcoin':
        return 'bitcoin';
      case 'eth':
      case 'ethereum':
        return 'ethereum';
      case 'bnb':
      case 'binancecoin':
        return 'binancecoin';
      case 'ada':
      case 'cardano':
        return 'cardano';
      case 'sol':
      case 'solana':
        return 'solana';
      case 'xrp':
      case 'ripple':
        return 'ripple';
      case 'dot':
      case 'polkadot':
        return 'polkadot';
      case 'doge':
      case 'dogecoin':
        return 'dogecoin';
      default:
        return null;
    }
  }

  /// Get list of supported crypto currencies
  static List<String> getSupportedCryptoCurrencies() {
    return ['BTC', 'ETH', 'BNB', 'ADA', 'SOL', 'XRP', 'DOT', 'DOGE'];
  }

  /// Get list of supported fiat currencies
  static List<String> getSupportedFiatCurrencies() {
    return ['USD', 'EUR', 'GBP', 'JPY', 'CAD', 'AUD'];
  }

  /// Check if currency is crypto
  static bool isCrypto(String currency) {
    return getCoinId(currency) != null;
  }
}

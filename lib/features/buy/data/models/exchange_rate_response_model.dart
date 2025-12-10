/// Response model for exchange rate API
/// Example response: {"ethereum": {"usd": 2234.56}}
///
/// This model wraps the raw Map response from the CoinGecko API
/// to provide type safety and easier data access.
class ExchangeRateResponseModel {
  final Map<String, Map<String, double>> rates;

  const ExchangeRateResponseModel({required this.rates});

  /// Creates an instance from the raw API JSON response
  /// The API returns data directly without a wrapper, e.g.:
  /// {"ethereum": {"usd": 2234.56}, "bitcoin": {"usd": 43210.12}}
  factory ExchangeRateResponseModel.fromJson(Map<String, dynamic> json) {
    final Map<String, Map<String, double>> parsedRates = {};

    json.forEach((coinId, value) {
      if (value is Map<String, dynamic>) {
        final Map<String, double> currencies = {};
        value.forEach((currency, rate) {
          if (rate is num) {
            currencies[currency] = rate.toDouble();
          }
        });
        parsedRates[coinId] = currencies;
      }
    });

    return ExchangeRateResponseModel(rates: parsedRates);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    rates.forEach((coinId, currencies) {
      json[coinId] = currencies;
    });
    return json;
  }
}

class ExchangeRateEntity {
  final String fromCurrency;
  final String toCurrency;
  final double rate;
  final DateTime timestamp;

  const ExchangeRateEntity({
    required this.fromCurrency,
    required this.toCurrency,
    required this.rate,
    required this.timestamp,
  });

  /// Calculate how much of toCurrency you get for a given amount of fromCurrency
  double convert(double amount) {
    return amount * rate;
  }

  /// Calculate how much of fromCurrency you need for a given amount of toCurrency
  double reverseConvert(double amount) {
    return amount / rate;
  }
}

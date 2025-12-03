class CryptoGlobalEntity {
  // Market Overview Stats
  final int activeCryptocurrencies;
  final int markets;

  // Total Market Data (USD)
  final double totalMarketCapUsd;
  final double totalVolumeUsd;

  // Market Dominance (top coins)
  final double btcDominance;
  final double ethDominance;

  // 24h Change
  final double marketCapChangePercentage24h;

  CryptoGlobalEntity({
    required this.activeCryptocurrencies,
    required this.markets,
    required this.totalMarketCapUsd,
    required this.totalVolumeUsd,
    required this.btcDominance,
    required this.ethDominance,
    required this.marketCapChangePercentage24h,
  });
}

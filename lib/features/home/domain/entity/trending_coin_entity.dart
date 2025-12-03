class TrendingCoinEntity {
  final String id;
  final String name;
  final String symbol;
  final int marketCapRank;
  final String imageUrl;
  final double price;
  final double priceChangePercentage24h;
  final String sparkline;

  TrendingCoinEntity({
    required this.id,
    required this.name,
    required this.symbol,
    required this.marketCapRank,
    required this.imageUrl,
    required this.price,
    required this.priceChangePercentage24h,
    required this.sparkline,
  });
}

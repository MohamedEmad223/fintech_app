class HomeCoinEntity {
  final String id;
  final String symbol;
  final String name;
  final String image;
  final double? currentPrice;
  final double? marketCap;
  final int? marketCapRank;
  final double? priceChange24h;
  final double? priceChangePercentage24h;

  HomeCoinEntity({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    this.currentPrice,
    this.marketCap,
    this.marketCapRank,
    this.priceChange24h,
    this.priceChangePercentage24h,
  });
}

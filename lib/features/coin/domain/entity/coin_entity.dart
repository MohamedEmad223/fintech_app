class CoinEntity {
  final String id;
  final String symbol;
  final String name;
  final String image;
  final double currentPrice;
  final double priceChangePercentage24h;
  final int marketCapRank;
  final double marketCap;
  final double totalVolume;
  final double high24h;
  final double low24h;
  final double circulatingSupply;
  final double totalSupply;
  final double? maxSupply;
  final String description;
  final List<String> categories;

  const CoinEntity({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.priceChangePercentage24h,
    required this.marketCapRank,
    required this.marketCap,
    required this.totalVolume,
    required this.high24h,
    required this.low24h,
    required this.circulatingSupply,
    required this.totalSupply,
    this.maxSupply,
    required this.description,
    required this.categories,
  });
}

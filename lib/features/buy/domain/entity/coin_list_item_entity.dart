class CoinListItemEntity {
  final String id;
  final String symbol;
  final String name;
  final Map<String, String>? platforms;

  const CoinListItemEntity({
    required this.id,
    required this.symbol,
    required this.name,
    this.platforms,
  });
}

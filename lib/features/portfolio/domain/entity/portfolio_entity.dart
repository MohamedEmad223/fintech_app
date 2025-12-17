class PortfolioEntity {
  final List<CoinEntity> coins;

  PortfolioEntity({required this.coins});
}

class CoinEntity {
  final String name;
  final double? price;

  CoinEntity({required this.name, required this.price});
}

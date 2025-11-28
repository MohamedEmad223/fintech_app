class CoinChartEntity {
  final List<ChartPoint> prices;

  const CoinChartEntity({required this.prices});
}

class ChartPoint {
  final DateTime timestamp;
  final double price;

  const ChartPoint({required this.timestamp, required this.price});
}

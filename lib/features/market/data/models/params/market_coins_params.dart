class MarketCoinsParams {
  final String vsCurrency;
  final String order;
  final int perPage;
  final int page;

  MarketCoinsParams({
    required this.vsCurrency,
    required this.order,
    required this.perPage,
    required this.page,
  });

  Map<String, dynamic> toMap() {
    return {
      'vs_currency': vsCurrency,
      'order': order,
      'per_page': perPage,
      'page': page,
    };
  }
}

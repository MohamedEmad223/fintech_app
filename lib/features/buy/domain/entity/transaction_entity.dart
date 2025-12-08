class TransactionEntity {
  final double payAmount;
  final String payCurrency;
  final double receiveAmount;
  final String receiveCurrency;
  final double exchangeRate;
  final double feePercentage;
  final double feeAmount;
  final double totalAmount;

  const TransactionEntity({
    required this.payAmount,
    required this.payCurrency,
    required this.receiveAmount,
    required this.receiveCurrency,
    required this.exchangeRate,
    required this.feePercentage,
    required this.feeAmount,
    required this.totalAmount,
  });

  /// Create a copy with updated values
  TransactionEntity copyWith({
    double? payAmount,
    String? payCurrency,
    double? receiveAmount,
    String? receiveCurrency,
    double? exchangeRate,
    double? feePercentage,
    double? feeAmount,
    double? totalAmount,
  }) {
    return TransactionEntity(
      payAmount: payAmount ?? this.payAmount,
      payCurrency: payCurrency ?? this.payCurrency,
      receiveAmount: receiveAmount ?? this.receiveAmount,
      receiveCurrency: receiveCurrency ?? this.receiveCurrency,
      exchangeRate: exchangeRate ?? this.exchangeRate,
      feePercentage: feePercentage ?? this.feePercentage,
      feeAmount: feeAmount ?? this.feeAmount,
      totalAmount: totalAmount ?? this.totalAmount,
    );
  }
}

import 'package:fintech_app/features/buy/domain/entity/exchange_rate_entity.dart';
import 'package:fintech_app/features/buy/domain/entity/transaction_entity.dart';

class CalculateTransactionUseCase {
  /// Default fee percentage (0.05% as shown in design)
  static const double defaultFeePercentage = 0.05;

  /// Calculate transaction details based on pay amount
  TransactionEntity calculateFromPayAmount({
    required double payAmount,
    required String payCurrency,
    required String receiveCurrency,
    required ExchangeRateEntity exchangeRate,
    double? feePercentage,
  }) {
    final fee = feePercentage ?? defaultFeePercentage;
    final feeAmount = payAmount * (fee / 100);
    final amountAfterFee = payAmount - feeAmount;
    final receiveAmount = exchangeRate.convert(amountAfterFee);

    return TransactionEntity(
      payAmount: payAmount,
      payCurrency: payCurrency,
      receiveAmount: receiveAmount,
      receiveCurrency: receiveCurrency,
      exchangeRate: exchangeRate.rate,
      feePercentage: fee,
      feeAmount: feeAmount,
      totalAmount: payAmount,
    );
  }

  /// Calculate transaction details based on receive amount
  TransactionEntity calculateFromReceiveAmount({
    required double receiveAmount,
    required String payCurrency,
    required String receiveCurrency,
    required ExchangeRateEntity exchangeRate,
    double? feePercentage,
  }) {
    final fee = feePercentage ?? defaultFeePercentage;

    // Work backwards from receive amount
    final amountBeforeFee = exchangeRate.reverseConvert(receiveAmount);
    final payAmount = amountBeforeFee / (1 - (fee / 100));
    final feeAmount = payAmount * (fee / 100);

    return TransactionEntity(
      payAmount: payAmount,
      payCurrency: payCurrency,
      receiveAmount: receiveAmount,
      receiveCurrency: receiveCurrency,
      exchangeRate: exchangeRate.rate,
      feePercentage: fee,
      feeAmount: feeAmount,
      totalAmount: payAmount,
    );
  }
}

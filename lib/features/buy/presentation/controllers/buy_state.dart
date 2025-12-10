import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fintech_app/features/buy/domain/entity/exchange_rate_entity.dart';
import 'package:fintech_app/features/buy/domain/entity/transaction_entity.dart';

part 'buy_state.freezed.dart';

@freezed
class BuyState with _$BuyState {
  const factory BuyState.initial() = _Initial;

  const factory BuyState.loading() = _Loading;

  const factory BuyState.exchangeRateLoaded({
    required ExchangeRateEntity exchangeRate,
    required TransactionEntity transaction,
  }) = _ExchangeRateLoaded;

  const factory BuyState.error({required String message}) = _Error;
}

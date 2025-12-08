import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/buy/domain/entity/coin_list_item_entity.dart';
import 'package:fintech_app/features/buy/domain/entity/exchange_rate_entity.dart';
import 'package:fintech_app/features/buy/domain/use_cases/calculate_transaction_use_case.dart';
import 'package:fintech_app/features/buy/domain/use_cases/get_coins_list_use_case.dart';
import 'package:fintech_app/features/buy/domain/use_cases/get_exchange_rate_use_case.dart';
import 'package:fintech_app/features/buy/presentation/controllers/buy_state.dart';

class BuyCubit extends Cubit<BuyState> {
  final GetExchangeRateUseCase _getExchangeRateUseCase;
  final CalculateTransactionUseCase _calculateTransactionUseCase;
  final GetCoinsListUseCase _getCoinsListUseCase;

  BuyCubit(
    this._getExchangeRateUseCase,
    this._calculateTransactionUseCase,
    this._getCoinsListUseCase,
  ) : super(const BuyState.initial());

  // Current state values
  String _fromCurrency = 'USD';
  String _toCurrency = 'ETH';
  double _payAmount = 1800.00;
  ExchangeRateEntity? _currentExchangeRate;
  List<CoinListItemEntity> _availableCoins = [];

  // Getters
  String get fromCurrency => _fromCurrency;
  String get toCurrency => _toCurrency;
  double get payAmount => _payAmount;
  List<String> get availableCryptos =>
      _availableCoins.map((coin) => coin.symbol.toUpperCase()).toList();

  /// Initialize and load exchange rate and coins list
  Future<void> initialize() async {
    await _loadCoinsList();
    await loadExchangeRate();
  }

  /// Load available coins list
  Future<void> _loadCoinsList() async {
    final result = await _getCoinsListUseCase();
    result.when(
      success: (coins) {
        // Filter to only include major cryptocurrencies
        _availableCoins = coins.where((coin) {
          final symbol = coin.symbol.toLowerCase();
          return [
            'btc',
            'eth',
            'bnb',
            'ada',
            'sol',
            'xrp',
            'dot',
            'doge',
          ].contains(symbol);
        }).toList();
      },
      failure: (error) {
        // Use default list if API fails
        _availableCoins = [];
      },
    );
  }

  /// Load exchange rate and calculate transaction
  Future<void> loadExchangeRate() async {
    emit(const BuyState.loading());

    final result = await _getExchangeRateUseCase(
      fromCurrency: _fromCurrency,
      toCurrency: _toCurrency,
    );

    result.when(
      success: (exchangeRate) {
        _currentExchangeRate = exchangeRate;
        _calculateAndEmit();
      },
      failure: (error) {
        emit(
          BuyState.error(
            message: error.message ?? 'Failed to load exchange rate',
          ),
        );
      },
    );
  }

  /// Update pay amount
  void updatePayAmount(double amount) {
    _payAmount = amount;
    _calculateAndEmit();
  }

  /// Update receive amount (calculate pay amount from it)
  void updateReceiveAmount(double amount) {
    if (_currentExchangeRate == null) return;

    final transaction = _calculateTransactionUseCase.calculateFromReceiveAmount(
      receiveAmount: amount,
      payCurrency: _fromCurrency,
      receiveCurrency: _toCurrency,
      exchangeRate: _currentExchangeRate!,
    );

    _payAmount = transaction.payAmount;
    emit(
      BuyState.exchangeRateLoaded(
        exchangeRate: _currentExchangeRate!,
        transaction: transaction,
      ),
    );
  }

  /// Change from currency
  Future<void> changeFromCurrency(String currency) async {
    if (_fromCurrency == currency) return;
    _fromCurrency = currency;
    await loadExchangeRate();
  }

  /// Change to currency
  Future<void> changeToCurrency(String currency) async {
    if (_toCurrency == currency) return;
    _toCurrency = currency;
    await loadExchangeRate();
  }

  /// Swap currencies
  Future<void> swapCurrencies() async {
    final temp = _fromCurrency;
    _fromCurrency = _toCurrency;
    _toCurrency = temp;
    await loadExchangeRate();
  }

  /// Calculate transaction and emit state
  void _calculateAndEmit() {
    if (_currentExchangeRate == null) return;

    final transaction = _calculateTransactionUseCase.calculateFromPayAmount(
      payAmount: _payAmount,
      payCurrency: _fromCurrency,
      receiveCurrency: _toCurrency,
      exchangeRate: _currentExchangeRate!,
    );

    emit(
      BuyState.exchangeRateLoaded(
        exchangeRate: _currentExchangeRate!,
        transaction: transaction,
      ),
    );
  }
}

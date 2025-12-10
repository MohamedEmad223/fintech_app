import 'dart:developer';

import 'package:fintech_app/core/networking/api_error_handler.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/buy/data/data_source/buy_remote_data_source.dart';
import 'package:fintech_app/features/buy/data/mappers/buy_mapper.dart';
import 'package:fintech_app/features/buy/domain/entity/coin_list_item_entity.dart';
import 'package:fintech_app/features/buy/domain/entity/exchange_rate_entity.dart';
import 'package:fintech_app/features/buy/domain/repositories/buy_repository.dart';

class BuyRepositoryImpl implements BuyRepository {
  final BuyRemoteDataSource _remoteDataSource;

  BuyRepositoryImpl(this._remoteDataSource);

  @override
  Future<ApiResult<ExchangeRateEntity>> getExchangeRate({
    required String fromCurrency,
    required String toCurrency,
  }) async {
    try {
      log('🔵 Fetching exchange rate: $fromCurrency → $toCurrency');

      final coinId = BuyMapper.getCoinId(toCurrency);
      if (coinId == null) {
        log('❌ Unsupported cryptocurrency: $toCurrency');
        return ApiResult.failure(
          ApiErrorHandler.handle(
            Exception('Unsupported cryptocurrency: $toCurrency'),
          ),
        );
      }

      final response = await _remoteDataSource.getExchangeRate(
        coinIds: coinId,
        vsCurrencies: fromCurrency.toLowerCase(),
      );

      log('✅ Exchange rate response received');

      final exchangeRate = BuyMapper.mapToExchangeRateEntity(
        apiResponse: response.rates,
        fromCurrency: fromCurrency,
        toCurrency: toCurrency,
      );

      log(
        '✅ Exchange rate mapped: 1 $fromCurrency = ${exchangeRate.rate} $toCurrency',
      );

      return ApiResult.success(exchangeRate);
    } catch (error, stackTrace) {
      log('❌ Error in getExchangeRate: $error');
      log('❌ Error type: ${error.runtimeType}');
      log('📋 Stack trace:\n$stackTrace');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<List<CoinListItemEntity>>> getCoinsList() async {
    try {
      log('🔵 Fetching coins list');

      final response = await _remoteDataSource.getCoinsList(
        includePlatform: false,
      );

      log('✅ Coins list received: ${response.length} coins');
      log('📊 Filtering in background to prevent UI jank...');

      final entities = response
          .where((model) {
            //ToDo : remove static data
            final symbol = model.symbol.toLowerCase();
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
          })
          .map(
            (model) => CoinListItemEntity(
              id: model.id,
              symbol: model.symbol,
              name: model.name,
              platforms: model.platforms,
            ),
          )
          .toList();

      log('✅ Filtered to ${entities.length} major cryptocurrencies');

      return ApiResult.success(entities);
    } catch (error, stackTrace) {
      log('❌ Error in getCoinsList: $error');
      log('📋 Stack trace:\n$stackTrace');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

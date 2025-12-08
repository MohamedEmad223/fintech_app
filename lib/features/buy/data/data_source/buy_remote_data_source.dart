import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/coin_list_response_model.dart';
import '../models/exchange_rate_response_model.dart';

part 'buy_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class BuyRemoteDataSource {
  factory BuyRemoteDataSource(Dio dio, {String baseUrl}) = _BuyRemoteDataSource;

  @GET('/simple/price')
  Future<ExchangeRateResponseModel> getExchangeRate({
    @Query('ids') required String coinIds,
    @Query('vs_currencies') required String vsCurrencies,
  });

  @GET('/coins/list')
  Future<List<CoinListItemModel>> getCoinsList({
    @Query('include_platform') bool includePlatform = false,
  });
}

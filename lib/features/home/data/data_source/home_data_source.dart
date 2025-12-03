import 'package:dio/dio.dart';
import 'package:fintech_app/core/networking/api_constants.dart';
import 'package:fintech_app/features/home/data/models/coin_home_response_model.dart';
import 'package:fintech_app/features/home/data/models/global_crypto_response_model.dart';
import 'package:fintech_app/features/home/data/models/trending_coins_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'home_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeDataSource {
  factory HomeDataSource(Dio dio, {String baseUrl}) = _HomeDataSource;

  @GET("/coins/markets")
  Future<List<CoinHomeResponseModel>> getCoinsMarkets({
    @Query('vs_currency') required String vsCurrency,
  });

  @GET("/global")
  Future<GlobalCryptoResponseModel> getGlobalCryptoRequest();

  @GET("/search/trending")
  Future<TrendingCoinsResponseModel> getTrendingCoinsRequest();
}

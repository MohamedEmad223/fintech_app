import 'package:dio/dio.dart';
import 'package:fintech_app/core/networking/api_constants.dart';
import 'package:fintech_app/features/home/data/models/coin_home_response_model.dart';
import 'package:fintech_app/features/home/data/models/global_crypto_response_model.dart';
import 'package:fintech_app/features/home/data/models/trending_coins_response_model.dart';
import 'package:retrofit/http.dart';

part 'home_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeDataSource {
  factory HomeDataSource(Dio dio, {String baseUrl}) = _HomeDataSource;

  @GET(ApiConstants.coinsMarkets)
  Future<List<CoinHomeResponseModel>> getCoinsMarkets({
    @Query('vs_currency') required String vsCurrency,
  });

  @GET(ApiConstants.globalCrypto)
  Future<GlobalCryptoResponseModel> getGlobalCryptoRequest();

  @GET(ApiConstants.trendingCoins)
  Future<TrendingCoinsResponseModel> getTrendingCoinsRequest();
}

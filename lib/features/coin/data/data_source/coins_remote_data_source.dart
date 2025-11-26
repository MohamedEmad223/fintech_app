import 'package:dio/dio.dart';
import 'package:fintech_app/features/coin/data/models/coin_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/coin_chart_response_model.dart';

part 'coins_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class CoinsRemoteDataSource {
  factory CoinsRemoteDataSource(Dio dio, {String baseUrl}) =
      _CoinsRemoteDataSource;

  @GET('/coins/{id}')
  Future<CoinResponseModel> getCoinDetails({
    @Path('id') required String coinId,
  });

  @GET('/coins/{id}/market_chart')
  Future<CoinChartResponseModel> getCoinChartData({
    @Path('id') required String coinId,
    @Query('vs_currency') required String vsCurrency,
    @Query('days') required String days,
  });
}

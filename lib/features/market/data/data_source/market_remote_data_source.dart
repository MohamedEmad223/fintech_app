import 'package:dio/dio.dart';
import 'package:fintech_app/features/market/data/models/market_response_model.dart';
import 'package:fintech_app/features/market/data/models/market_search_response_model.dart';
import 'package:retrofit/http.dart';
import '../../../../core/networking/parse_error_logger.dart';

import '../../../../core/networking/api_constants.dart';

part 'market_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class MarketRemoteDataSource {
  factory MarketRemoteDataSource(Dio dio, {String? baseUrl}) = _MarketRemoteDataSource;

  @GET("/coins/markets")
  Future<List<MarketResponseModel>> getMarketData(
    @Queries() Map<String, dynamic> params,
  );

  @GET("/search")
  Future<MarketSearchResponseModel> getMarketSearchData(
    @Query("query") String query,
  );
}

import 'package:dio/dio.dart';
import 'package:fintech_app/core/networking/api_constants.dart';
import 'package:fintech_app/features/portfolio/data/models/simple_price_model.dart';
import 'package:retrofit/http.dart';
import '../../../../core/networking/parse_error_logger.dart';


part 'portfolio_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class PortfolioRemoteDataSource {
  factory PortfolioRemoteDataSource(Dio dio, {String? baseUrl}) =
      _PortfolioRemoteDataSource;

  @GET(ApiConstants.portfolio)
  Future<SimplePriceModel> getSimplePrice(
    @Query(ApiConstants.queryPortfolio) String ids,
    @Query(ApiConstants.queryPortfolio2) String vsCurrencies,
  );
}

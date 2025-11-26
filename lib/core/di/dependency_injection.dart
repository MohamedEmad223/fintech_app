import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:fintech_app/features/market/data/data_source/market_remote_data_source.dart';
import 'package:fintech_app/features/market/data/repositories/market_repository_impl.dart';
import 'package:fintech_app/features/market/domain/repositories/market_repository.dart';
import 'package:fintech_app/features/market/domain/use_cases/get_market_coins_use_case.dart';
import 'package:fintech_app/features/market/domain/use_cases/search_market_coins_use_case.dart';
import 'package:fintech_app/features/market/presentation/controllers/market_cubit.dart';

import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  sl.registerLazySingleton<MarketRemoteDataSource>(
    () => MarketRemoteDataSource(dio),
  );
  sl.registerLazySingleton<MarketRepository>(() => MarketRepositoryImpl(sl()));
  sl.registerLazySingleton<GetMarketCoinsUseCase>(
    () => GetMarketCoinsUseCase(sl()),
  );
  sl.registerLazySingleton<SearchMarketCoinsUseCase>(
    () => SearchMarketCoinsUseCase(sl()),
  );
  sl.registerFactory<MarketCubit>(() => MarketCubit(sl(), sl()));
}

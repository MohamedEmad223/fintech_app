import 'package:dio/dio.dart';
import 'package:fintech_app/core/networking/firbase_services/firebase_service.dart';
import 'package:fintech_app/features/portfolio/data/data_source/portfolio_remote_data_source.dart';
import 'package:fintech_app/features/portfolio/data/repositories/portfolio_repo_impl.dart';
import 'package:fintech_app/features/portfolio/domain/repositories/portfolio_repo.dart';
import 'package:fintech_app/features/portfolio/domain/use_cases/get_portfolio_data_use_case.dart';
import 'package:fintech_app/features/portfolio/presentation/cubit/portfolio_cubit.dart';
import 'package:fintech_app/features/auth/biometric/data/repositories/biometric_repo_impl.dart';
import 'package:fintech_app/features/auth/biometric/domain/repositories/biometric_repo.dart';
import 'package:fintech_app/features/auth/biometric/domain/use_cases/authenticate_with_biometrics_use_case.dart';
import 'package:fintech_app/features/auth/biometric/domain/use_cases/check_biometric_support_use_case.dart';
import 'package:fintech_app/features/auth/biometric/domain/use_cases/get_available_biometrics_use_case.dart';
import 'package:fintech_app/features/auth/biometric/presentation/cubit/biometric_cubit.dart';
import 'package:fintech_app/features/auth/login/data/repositories/login_repo_impl.dart';
import 'package:fintech_app/features/auth/login/domain/repositories/login_repo.dart';
import 'package:fintech_app/features/auth/login/domain/use_cases/login_use_case.dart';
import 'package:fintech_app/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:fintech_app/features/auth/register/data/repositories/register_repo_impl.dart';
import 'package:fintech_app/features/auth/register/domain/repositories/register_repo.dart';
import 'package:fintech_app/features/auth/register/domain/use_cases/register_use_case.dart';
import 'package:fintech_app/features/auth/register/presentation/cubit/register_cubit.dart';
import 'package:fintech_app/features/buy/data/data_source/buy_remote_data_source.dart';
import 'package:fintech_app/features/buy/data/repositories/buy_repository_impl.dart';
import 'package:fintech_app/features/buy/domain/repositories/buy_repository.dart';
import 'package:fintech_app/features/buy/domain/use_cases/calculate_transaction_use_case.dart';
import 'package:fintech_app/features/buy/domain/use_cases/get_coins_list_use_case.dart';
import 'package:fintech_app/features/buy/domain/use_cases/get_exchange_rate_use_case.dart';
import 'package:fintech_app/features/buy/presentation/controllers/buy_cubit.dart';
import 'package:fintech_app/features/coin/data/data_source/coins_remote_data_source.dart';
import 'package:fintech_app/features/coin/data/repositories/coin_repository_impl.dart';
import 'package:fintech_app/features/coin/domain/repositories/coin_repository.dart';
import 'package:fintech_app/features/coin/domain/use_cases/get_coin_chart_data_use_case.dart';
import 'package:fintech_app/features/coin/domain/use_cases/get_coin_details_use_case.dart';
import 'package:fintech_app/features/coin/domain/use_cases/get_supported_currencies_use_case.dart';
import 'package:fintech_app/features/coin/presentation/controllers/coin_cubit.dart';
import 'package:fintech_app/features/home/data/data_source/home_data_source.dart';
import 'package:fintech_app/features/home/data/repos/global_coin_repo_impl.dart';
import 'package:fintech_app/features/home/data/repos/home_coin_repo_impl.dart';
import 'package:fintech_app/features/home/data/repos/trending_coin_repo_impl.dart';
import 'package:fintech_app/features/home/domain/repos/get_global_coin_repo.dart';
import 'package:fintech_app/features/home/domain/repos/get_trending_coins_repo.dart';
import 'package:fintech_app/features/home/domain/repos/home_coin_repo.dart';
import 'package:fintech_app/features/home/domain/use_cases/get_coins_home_use_case.dart';
import 'package:fintech_app/features/home/domain/use_cases/get_global_coin_use_case.dart';
import 'package:fintech_app/features/home/domain/use_cases/get_trending_coins_use_case.dart';
import 'package:fintech_app/features/home/presentation/logic/global_crypto/global_crypto_cubit.dart';
import 'package:fintech_app/features/home/presentation/logic/home_coin/home_coin_cubit.dart';
import 'package:fintech_app/features/home/presentation/logic/trending_cubit/trending_cubit.dart';
import 'package:fintech_app/features/market/data/data_source/market_remote_data_source.dart';
import 'package:fintech_app/features/market/data/repositories/market_repository_impl.dart';
import 'package:fintech_app/features/market/domain/repositories/market_repository.dart';
import 'package:fintech_app/features/market/domain/use_cases/get_market_coins_use_case.dart';
import 'package:fintech_app/features/market/domain/use_cases/search_market_coins_use_case.dart';
import 'package:fintech_app/features/market/presentation/controllers/market_cubit.dart';

import 'package:get_it/get_it.dart';

import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  // ignore: unused_local_variable
  Dio dio = DioFactory.getDio();

  /// Market feature
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

  /// Coin feature
  sl.registerLazySingleton<CoinsRemoteDataSource>(
    () => CoinsRemoteDataSource(dio),
  );
  sl.registerLazySingleton<CoinRepository>(() => CoinRepositoryImpl(sl()));
  sl.registerLazySingleton<GetCoinDetailsUseCase>(
    () => GetCoinDetailsUseCase(sl()),
  );
  sl.registerLazySingleton<GetCoinChartDataUseCase>(
    () => GetCoinChartDataUseCase(sl()),
  );
  sl.registerLazySingleton<GetSupportedCurrenciesUseCase>(
    () => GetSupportedCurrenciesUseCase(sl()),
  );
  sl.registerFactory<CoinCubit>(() => CoinCubit(sl(), sl(), sl()));

  ///Supported Currencies
  sl.registerLazySingleton<HomeDataSource>(() => HomeDataSource(dio));

  // Register repositories
  sl.registerLazySingleton<GetGlobalCoinRepo>(() => GlobalCoinRepoImpl(sl()));
  sl.registerLazySingleton<HomeCoinRepo>(() => HomeCoinRepoImpl(sl()));
  sl.registerLazySingleton<GetTrendingCoinsRepo>(
    () => TrendingCoinRepoImpl(sl()),
  );

  /// Buy feature
  sl.registerLazySingleton<BuyRemoteDataSource>(() => BuyRemoteDataSource(dio));
  sl.registerLazySingleton<BuyRepository>(() => BuyRepositoryImpl(sl()));
  sl.registerLazySingleton<GetExchangeRateUseCase>(
    () => GetExchangeRateUseCase(sl()),
  );
  sl.registerLazySingleton<CalculateTransactionUseCase>(
    () => CalculateTransactionUseCase(),
  );
  sl.registerLazySingleton<GetCoinsListUseCase>(
    () => GetCoinsListUseCase(sl()),
  );
  sl.registerLazySingleton<GetHomeCoinsUseCase>(
    () => GetHomeCoinsUseCase(sl()),
  );
  sl.registerLazySingleton<BuyCubit>(() => BuyCubit(sl(), sl(), sl()));
  sl.registerLazySingleton<GetTrendingCoinsUseCase>(
    () => GetTrendingCoinsUseCase(sl()),
  );
  sl.registerLazySingleton<GetGlobalCoinUseCase>(
    () => GetGlobalCoinUseCase(sl()),
  );

  sl.registerFactory<HomeCoinCubit>(() => HomeCoinCubit(sl()));
  sl.registerFactory<TrendingCubit>(() => TrendingCubit(sl()));
  sl.registerFactory<GlobalCryptoCubit>(() => GlobalCryptoCubit(sl()));

  /// Auth: Biometric feature
  sl.registerLazySingleton<BiometricRepository>(
    () => BiometricRepositoryImpl(),
  );
  sl.registerLazySingleton<CheckBiometricSupportUseCase>(
    () => CheckBiometricSupportUseCase(sl()),
  );
  sl.registerLazySingleton<AuthenticateWithBiometricsUseCase>(
    () => AuthenticateWithBiometricsUseCase(sl()),
  );
  sl.registerLazySingleton<GetAvailableBiometricsUseCase>(
    () => GetAvailableBiometricsUseCase(sl()),
  );

  sl.registerFactory<BiometricCubit>(() => BiometricCubit(sl(), sl()));

  /// Auth: Login feature
  sl.registerLazySingleton<LoginRepository>(() => LoginRepoImpl());
  sl.registerLazySingleton<LoginUseCase>(() => LoginUseCase(sl()));
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));

  /// Auth: Register feature
  sl.registerLazySingleton<RegisterRepository>(
    () => RegisterRepoImpl(FirebaseService()),
  );
  sl.registerLazySingleton<RegisterUseCase>(() => RegisterUseCase(sl()));
  sl.registerFactory<RegisterCubit>(() => RegisterCubit(sl()));

  /// Portfolio Feature
  sl.registerLazySingleton<PortfolioRemoteDataSource>(
    () => PortfolioRemoteDataSource(dio),
  );
  sl.registerLazySingleton<PortfolioRepo>(() => PortfolioRepoImpl(sl()));
  sl.registerLazySingleton<GetPortfolioDataUseCase>(
    () => GetPortfolioDataUseCase(sl()),
  );
  sl.registerFactory<PortfolioCubit>(() => PortfolioCubit(sl()));
}

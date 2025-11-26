import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/market/domain/entity/market_coin_entity.dart';
import 'package:fintech_app/features/market/domain/repositories/market_repository.dart';
import 'package:fintech_app/features/market/domain/use_cases/get_market_coins_use_case.dart';
import 'package:fintech_app/features/market/domain/use_cases/search_market_coins_use_case.dart';
import 'package:fintech_app/features/market/presentation/controllers/market_cubit.dart';
import 'package:fintech_app/features/market/presentation/screens/market_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

class MockMarketRepository implements MarketRepository {
  @override
  Future<ApiResult<List<MarketCoinEntity>>> getMarketCoins({
    required int page,
  }) async {
    return const ApiResult.success([
      MarketCoinEntity(
        id: 'bitcoin',
        symbol: 'btc',
        name: 'Bitcoin',
        image: 'url',
        currentPrice: 50000,
        marketCapRank: 1,
        priceChangePercentage24h: 5.0,
      ),
    ]);
  }

  @override
  Future<ApiResult<List<MarketCoinEntity>>> searchMarketCoins({
    required String query,
  }) async {
    return const ApiResult.success([
      MarketCoinEntity(
        id: 'bitcoin',
        symbol: 'btc',
        name: 'Bitcoin',
        image: 'url',
        currentPrice: 0.0,
        marketCapRank: 1,
        priceChangePercentage24h: 0.0,
      ),
    ]);
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await sl.reset();
    sl.registerLazySingleton<MarketRepository>(() => MockMarketRepository());
    sl.registerLazySingleton<GetMarketCoinsUseCase>(
      () => GetMarketCoinsUseCase(sl()),
    );
    sl.registerLazySingleton<SearchMarketCoinsUseCase>(
      () => SearchMarketCoinsUseCase(sl()),
    );
    sl.registerFactory<MarketCubit>(() => MarketCubit(sl(), sl()));
  });

  testWidgets('Market flow test', (WidgetTester tester) async {
    /// Build app
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MaterialApp(home: MarketScreen());
        },
      ),
    );

    /// Initial load
    await tester.pumpAndSettle();
    expect(find.text('Bitcoin'), findsOneWidget);

    /// Test Search
    final searchField = find.byType(TextField);
    await tester.enterText(searchField, 'btc');
    await tester.pumpAndSettle(
      const Duration(milliseconds: 600),
    );

    expect(find.text('Bitcoin'), findsOneWidget);
  });
}

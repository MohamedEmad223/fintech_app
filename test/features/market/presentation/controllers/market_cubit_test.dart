import 'package:bloc_test/bloc_test.dart';
import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/market/domain/entity/market_coin_entity.dart';
import 'package:fintech_app/features/market/domain/repositories/market_repository.dart';
import 'package:fintech_app/features/market/domain/use_cases/get_market_coins_use_case.dart';
import 'package:fintech_app/features/market/domain/use_cases/search_market_coins_use_case.dart';
import 'package:fintech_app/features/market/presentation/controllers/market_cubit.dart';
import 'package:fintech_app/features/market/presentation/controllers/market_state.dart';
import 'package:flutter_test/flutter_test.dart';

class MockMarketRepository implements MarketRepository {
  @override
  Future<ApiResult<List<MarketCoinEntity>>> getMarketCoins({
    required int page,
  }) async {
    return const ApiResult.success([]);
  }

  @override
  Future<ApiResult<List<MarketCoinEntity>>> searchMarketCoins({
    required String query,
  }) async {
    return const ApiResult.success([]);
  }
}

void main() {
  late MarketCubit marketCubit;
  late MockMarketRepository mockMarketRepository;
  late GetMarketCoinsUseCase getMarketCoinsUseCase;
  late SearchMarketCoinsUseCase searchMarketCoinsUseCase;

  setUp(() {
    mockMarketRepository = MockMarketRepository();
    getMarketCoinsUseCase = GetMarketCoinsUseCase(mockMarketRepository);
    searchMarketCoinsUseCase = SearchMarketCoinsUseCase(mockMarketRepository);
    marketCubit = MarketCubit(getMarketCoinsUseCase, searchMarketCoinsUseCase);
  });

  tearDown(() {
    marketCubit.close();
  });

  blocTest<MarketCubit, MarketState>(
    'emits [loading, success] when getMarketCoins is called successfully',
    build: () => marketCubit,
    act: (cubit) => cubit.getMarketCoins(),
    expect: () => [const MarketState.loading(), const MarketState.success([])],
  );

  blocTest<MarketCubit, MarketState>(
    'emits [loading, success] when searchMarketCoins is called successfully',
    build: () => marketCubit,
    act: (cubit) => cubit.searchMarketCoins('btc'),
    expect: () => [const MarketState.loading(), const MarketState.success([])],
  );
}

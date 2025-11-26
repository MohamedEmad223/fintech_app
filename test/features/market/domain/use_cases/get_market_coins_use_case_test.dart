import 'package:fintech_app/core/networking/api_result.dart';
import 'package:fintech_app/features/market/domain/entity/market_coin_entity.dart';
import 'package:fintech_app/features/market/domain/repositories/market_repository.dart';
import 'package:fintech_app/features/market/domain/use_cases/get_market_coins_use_case.dart';
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
  late GetMarketCoinsUseCase useCase;
  late MockMarketRepository mockMarketRepository;

  setUp(() {
    mockMarketRepository = MockMarketRepository();
    useCase = GetMarketCoinsUseCase(mockMarketRepository);
  });

  test('should return list of coins from repository', () async {
    // Act
    final result = await useCase(page: 1);

    // Assert
    expect(result, isA<Success<List<MarketCoinEntity>>>());
    expect((result as Success).data, isEmpty);
  });
}

import 'package:fintech_app/core/networking/api_error_model.dart';
import 'package:fintech_app/features/market/domain/entity/market_coin_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_state.freezed.dart';

@freezed
class MarketState with _$MarketState {
  const factory MarketState.initial() = MarketInitial;

  const factory MarketState.loading() = MarketLoading;
  const factory MarketState.success(List<MarketCoinEntity> coins) =
      MarketSuccess;
  const factory MarketState.error(ApiErrorModel error) = MarketError;

  const factory MarketState.paginationLoading(List<MarketCoinEntity> coins) =
      MarketPaginationLoading;
  const factory MarketState.paginationError(
    List<MarketCoinEntity> coins,
    ApiErrorModel error,
  ) = MarketPaginationError;
}

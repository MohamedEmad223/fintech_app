import 'package:fintech_app/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entity/portfolio_entity.dart';

part 'portfolio_state.freezed.dart';

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState.initial() = _Initial;
  const factory PortfolioState.loading() = _Loading;
  const factory PortfolioState.success(PortfolioEntity data) = _Success;
  const factory PortfolioState.failure(ApiErrorModel error) = _Failure;
}

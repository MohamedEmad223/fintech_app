import 'package:fintech_app/core/networking/api_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fintech_app/features/portfolio/domain/use_cases/get_portfolio_data_use_case.dart';
import 'package:fintech_app/features/portfolio/presentation/cubit/portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  final GetPortfolioDataUseCase _getPortfolioDataUseCase;

  PortfolioCubit(this._getPortfolioDataUseCase)
    : super(const PortfolioState.initial());

  Future<void> getPortfolioData({
    required String ids,
    required String vsCurrencies,
  }) async {
    emit(const PortfolioState.loading());
    final result = await _getPortfolioDataUseCase(
      ids: ids,
      vsCurrencies: vsCurrencies,
    );
    if (!isClosed) {
      result.when(
        success: (data) {
          emit(PortfolioState.success(data));
        },
        failure: (error) {
          emit(PortfolioState.failure(error));
        },
      );
    }
  }
}

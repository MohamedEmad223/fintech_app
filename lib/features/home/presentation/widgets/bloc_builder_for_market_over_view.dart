import 'package:fintech_app/features/home/presentation/logic/home_coin/home_coin_cubit.dart';
import 'package:fintech_app/features/home/presentation/widgets/market_overview_widget.dart';
import 'package:fintech_app/features/home/presentation/widgets/shimmer_market_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuilderForMarketOverView extends StatelessWidget {
  const BlocBuilderForMarketOverView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCoinCubit, HomeCoinState>(
      buildWhen: (previous, current) =>
          current is LoadingCoinHome ||
          current is SuccessCoinHome ||
          current is ErrorCoinHome,
      builder: (context, state) {
        return state.maybeWhen(
          loadingCoinHome: () => MarketOverviewShimmer(),
          successCoinHome: (items) =>
              MarketOverviewGridViewWidget(items: items),
          errorCoinHome: (error) =>
              Center(child: Text(error.message ?? 'Error')),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

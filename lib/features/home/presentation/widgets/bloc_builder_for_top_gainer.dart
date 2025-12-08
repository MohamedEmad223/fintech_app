import 'package:fintech_app/features/home/presentation/logic/home_coin/home_coin_cubit.dart';
import 'package:fintech_app/features/home/presentation/widgets/top_gainer_list_view.dart';
import 'package:fintech_app/features/home/presentation/widgets/top_gainer_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuilderForTopGainer extends StatelessWidget {
  const BlocBuilderForTopGainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCoinCubit, HomeCoinState>(
      buildWhen: (previous, current) =>
          current is LoadingCoinHome ||
          current is SuccessCoinHome ||
          current is ErrorCoinHome,
      builder: (context, state) {
        return state.maybeWhen(
          loadingCoinHome: () => TopGainerShimmer(),
          successCoinHome: (items) => TopGainerListView(topGainerList: items),
          errorCoinHome: (error) =>
              Center(child: Text(error.message ?? 'Error')),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

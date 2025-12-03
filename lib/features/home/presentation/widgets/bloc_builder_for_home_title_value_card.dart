import 'package:fintech_app/features/home/presentation/logic/home_coin/home_coin_cubit.dart';
import 'package:fintech_app/features/home/presentation/widgets/home_total_value_card.dart';
import 'package:fintech_app/features/home/presentation/widgets/home_total_value_card_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuilderForHomeTitleValueCard extends StatelessWidget {
  const BlocBuilderForHomeTitleValueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCoinCubit, HomeCoinState>(
      buildWhen: (previous, current) =>
          current is LoadingCoinHome ||
          current is SuccessCoinHome ||
          current is ErrorCoinHome,
      builder: (context, state) {
        return state.maybeWhen(
          loadingCoinHome: () => HomeTotalValueCardShimmer(),
          successCoinHome: (items) => HomeTotalValueCard(items: items),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

import 'package:fintech_app/features/home/presentation/logic/trending_cubit/trending_cubit.dart';
import 'package:fintech_app/features/home/presentation/widgets/trending_now_list_view.dart';
import 'package:fintech_app/features/home/presentation/widgets/trending_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuliderForTrendingNow extends StatelessWidget {
  const BlocBuliderForTrendingNow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingCubit, TrendingState>(
      buildWhen: (previous, current) =>
          current is LoadingTrendingCoins ||
          current is SuccessTrendingCoins ||
          current is ErrorTrendingCoins,
      builder: (context, state) {
        return state.maybeWhen(
          loadingTrendingCoins: () => const TrendingShimmerLoading(),
          successTrendingCoins: (items) =>
              TrendingNowListView(trendingList: items),
          errorTrendingCoins: (error) => Center(child: Text(error.message!)),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

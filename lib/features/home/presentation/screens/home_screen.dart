import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/features/home/presentation/logic/global_crypto/global_crypto_cubit.dart';
import 'package:fintech_app/features/home/presentation/logic/home_coin/home_coin_cubit.dart';
import 'package:fintech_app/features/home/presentation/logic/trending_cubit/trending_cubit.dart';
import 'package:fintech_app/features/home/presentation/screens/trending_coins_screen.dart';
import 'package:fintech_app/features/home/presentation/widgets/bloc_builder_for_home_title_value_card.dart';
import 'package:fintech_app/features/home/presentation/widgets/bloc_builder_for_market_over_view.dart';
import 'package:fintech_app/features/home/presentation/widgets/bloc_builder_for_top_gainer.dart';
import 'package:fintech_app/features/home/presentation/widgets/bloc_bulider_for_trending_now.dart';
import 'package:fintech_app/features/home/presentation/widgets/header_of_home_widget.dart';
import 'package:fintech_app/core/widgets/lable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<HomeCoinCubit>()..getHomeCoinsRequest(),
        ),
        BlocProvider(
          create: (context) =>
              sl<GlobalCryptoCubit>()..getGlobalCryptoRequest(),
        ),
        BlocProvider(
          create: (context) => sl<TrendingCubit>()..getTrendingCoinsRequest(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                HeaderOfHomeWidget(),
                SizedBox(height: 30.h),
                BlocBuilderForHomeTitleValueCard(),
                SizedBox(height: 14.h),
                LableTextWidget(text: 'Market Overview'),
                SizedBox(height: 10.h),
                BlocBuilderForMarketOverView(),
                SizedBox(height: 14.h),
                LableTextWidget(
                  text: 'Trending Now',
                  viewAll: 'View All',
                  onViewAllTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BlocProvider.value(
                          value: sl<TrendingCubit>(),
                          child: const TrendingCoinsScreen(),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 10.h),
                BlocBuliderForTrendingNow(),
                SizedBox(height: 14.h),
                LableTextWidget(text: 'Top Gainers'),
                SizedBox(height: 10.h),
                BlocBuilderForTopGainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

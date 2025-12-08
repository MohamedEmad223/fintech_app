import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/features/home/presentation/logic/trending_cubit/trending_cubit.dart';
import 'package:fintech_app/features/home/presentation/widgets/trending_now.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingCoinsScreen extends StatelessWidget {
  const TrendingCoinsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Trending Coins', style: AppStyles.font24PrimaryLatoBold),
        centerTitle: true,
      ),
      body: BlocBuilder<TrendingCubit, TrendingState>(
        builder: (context, state) {
          return state.maybeWhen(
            successTrendingCoins: (trendingCoins) {
              return GridView.builder(
                padding: EdgeInsets.all(16.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.w,
                  childAspectRatio: 0.8,
                ),
                itemCount: trendingCoins.length,
                itemBuilder: (context, index) {
                  return TrendingNow(item: trendingCoins[index]);
                },
              );
            },
            loadingTrendingCoins: () =>
                const Center(child: CircularProgressIndicator()),
            errorTrendingCoins: (error) =>
                Center(child: Text(error.message ?? 'Unknown Error')),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

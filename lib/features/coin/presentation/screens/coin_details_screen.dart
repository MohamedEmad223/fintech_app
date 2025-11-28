import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/spacing.dart';
import '../../domain/entity/coin_entity.dart';
import '../controllers/coin_cubit.dart';
import '../controllers/coin_state.dart';
import '../widgets/about_section.dart';
import '../widgets/action_buttons.dart';
import '../widgets/coin_details_chart_configurations.dart';
import '../widgets/coin_header.dart';
import '../widgets/coin_statistics.dart';

class CoinDetailsScreen extends StatelessWidget {
  final String coinId;

  const CoinDetailsScreen({super.key, required this.coinId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<CoinCubit>()..loadCoinDetails(coinId),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: const CoinDetailsAppBar(),
        body: BlocBuilder<CoinCubit, CoinState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              coinDetailsLOADING: () => const Center(child: CircularProgressIndicator()),
              coinDetailsSuccess: (coin) {
                return CoinDetailsContent(coin: coin);
              },
              coinDetailsFailure: (error) {
                return CoinDetailsErrorWidget(
                  error: error,
                  onRetry: () => context.read<CoinCubit>().loadCoinDetails(coinId),
                );
              },
              coinChartDataLoading: () {
                final coin = context.read<CoinCubit>().currentCoin;
                if (coin == null) {
                  return const Center(child: CircularProgressIndicator());
                }
                return CoinDetailsContent(coin: coin);
              },
              coinChartDataSuccess: (chartData, selectedInterval) {
                final coin = context.read<CoinCubit>().currentCoin;
                if (coin == null) {
                  return const Center(child: Text('Error: Coin data not available'));
                }
                return CoinDetailsContent(
                  coin: coin,
                  chartWidget: CoinDetailsChartConfigurations(
                    coin: coin,
                    chartData: chartData,
                    selectedInterval: selectedInterval,
                  ),
                );
              },
              coinChartDataFailure: (error) {
                final coin = context.read<CoinCubit>().currentCoin;
                if (coin == null) {
                  return CoinDetailsErrorWidget(
                    error: error,
                    onRetry: () => context.read<CoinCubit>().loadCoinDetails(coinId),
                  );
                }
                return CoinDetailsContent(
                  coin: coin,
                  chartWidget: ChartErrorWidget(
                    error: error,
                    onRetry: () => context.read<CoinCubit>().loadChartData('1'),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class CoinDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CoinDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        'Coin Details',
        style: TextStyle(
          color: const Color(0xFF111827),
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CoinDetailsContent extends StatelessWidget {
  final CoinEntity coin;
  final Widget? chartWidget;
  const CoinDetailsContent({super.key, required this.coin, this.chartWidget});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(20),
              CoinHeader(coin: coin),
              verticalSpace(20),
              chartWidget ?? const ChartLoadingPlaceholder(),
              verticalSpace(20),
              CoinStatistics(coin: coin),
              verticalSpace(20),
              AboutSection(description: coin.description),
              verticalSpace(30),
              const ActionButtons(),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartLoadingPlaceholder extends StatelessWidget {
  const ChartLoadingPlaceholder({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: const CircularProgressIndicator(),
    );
  }
}

class ChartErrorWidget extends StatelessWidget {
  final String error;
  final VoidCallback onRetry;
  const ChartErrorWidget({super.key, required this.error, required this.onRetry});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 48.sp, color: Colors.red),
          verticalSpace(12),
          Text(
            'Failed to load chart',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          verticalSpace(8),
          Text(
            error,
            style: TextStyle(fontSize: 12.sp, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          verticalSpace(12),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Retry Chart'),
          ),
        ],
      ),
    );
  }
}

class CoinDetailsErrorWidget extends StatelessWidget {
  final String error;
  final VoidCallback onRetry;
  const CoinDetailsErrorWidget({super.key, required this.error, required this.onRetry});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64.sp, color: Colors.red),
          verticalSpace(16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Text(
              error,
              style: TextStyle(fontSize: 16.sp, color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ),
          verticalSpace(16),
          ElevatedButton(
            onPressed: onRetry,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1D3A70),
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 12.h),
            ),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}

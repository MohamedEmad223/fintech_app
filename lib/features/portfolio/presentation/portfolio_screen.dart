import 'package:fintech_app/core/widgets/custom_app_bar.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/build_month_selector_widget.dart';
import 'package:fintech_app/core/widgets/lable_text_widget.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/my_holding_widget.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/portfolio_chart_value_widget.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/recent_transactions_widget.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/total_value_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/features/portfolio/presentation/cubit/portfolio_cubit.dart';
import 'package:fintech_app/features/portfolio/presentation/cubit/portfolio_state.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/portfolio_skeleton_loader.dart';
import 'package:fintech_app/features/portfolio/domain/entity/portfolio_entity.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PortfolioCubit>()
        ..getPortfolioData(
          ids: 'ethereum,bitcoin,litecoin',
          vsCurrencies: 'usd',
        ),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(title: 'Portfolio'),
        body: BlocBuilder<PortfolioCubit, PortfolioState>(
          builder: (context, state) {
            return state.when(
              initial: () => const PortfolioSkeletonLoader(),
              loading: () => const PortfolioSkeletonLoader(),
              success: (data) {
                double total = 0.0;
               
                final btc = data.coins.firstWhere(
                  (c) => c.name.toLowerCase() == 'bitcoin',
                  orElse: () => CoinEntity(name: '', price: 0),
                );
                total += (btc.price ?? 0) * 0.05;

                final eth = data.coins.firstWhere(
                  (c) => c.name.toLowerCase() == 'ethereum',
                  orElse: () => CoinEntity(name: '', price: 0),
                );
                total += (eth.price ?? 0) * 1.5;

                final ltc = data.coins.firstWhere(
                  (c) => c.name.toLowerCase() == 'litecoin',
                  orElse: () => CoinEntity(name: '', price: 0),
                );
                total += (ltc.price ?? 0) * 26.3;

                final totalValueStr = '\$${total.toStringAsFixed(2)}';

                return SingleChildScrollView(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TotalValueCard(totalValue: totalValueStr),
                      SizedBox(height: 20.h),
                      const BuildMonthSelectorWidget(),
                      SizedBox(height: 20.h),
                      PortfolioChartValueWidget(totalValue: totalValueStr),
                      SizedBox(height: 24.h),
                      const LableTextWidget(text: 'My Holdings'),
                      SizedBox(height: 16.h),
                      MyHoldingWidget(coins: data.coins),
                      SizedBox(height: 24.h),
                      const LableTextWidget(text: 'Recent Transactions'),
                      SizedBox(height: 16.h),
                      const RecentTransactionsWidget(),
                      SizedBox(height: 24.h),
                    ],
                  ),
                );
              },
              failure: (error) => Center(child: Text(error.message ?? 'Error')),
            );
          },
        ),
      ),
    );
  }
}

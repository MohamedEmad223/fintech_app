import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/features/home/presentation/widgets/header_of_home_widget.dart';
import 'package:fintech_app/features/home/presentation/widgets/home_total_value_card.dart';
import 'package:fintech_app/features/home/presentation/widgets/market_overview_widget.dart';
import 'package:fintech_app/features/home/presentation/widgets/top_gainer_list_view.dart';
import 'package:fintech_app/features/home/presentation/widgets/trending_now_list_view.dart';
import 'package:fintech_app/core/widgets/lable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              HomeTotalValueCard(),
              SizedBox(height: 14.h),
              LableTextWidget(text: 'Market Overview'),
              SizedBox(height: 10.h),
              MarketOverviewGridViewWidget(),
              SizedBox(height: 14.h),
              LableTextWidget(text: 'Trending Now', viewAll: 'View All'),
              SizedBox(height: 10.h),
              TrendingNowListView(),
              SizedBox(height: 14.h),
              LableTextWidget(text: 'Top Gainers'),
              SizedBox(height: 10.h),
              TopGainerListView(),
            ],
          ),
        ),
      ),
    );
  }
}

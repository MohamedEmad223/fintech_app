import 'package:fintech_app/core/widgets/custom_app_bar.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/build_month_selector_widget.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/lable_text_widget.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/my_holding_widget.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/portfolio_chart_value_widget.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/recent_transactions_widget.dart';
import 'package:fintech_app/features/portfolio/presentation/widgets/total_value_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(title: 'Portfolio'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TotalValueCard(),
            SizedBox(height: 20.h),
            const BuildMonthSelectorWidget(),
            SizedBox(height: 20.h),
            const PortfolioChartValueWidget(),
            SizedBox(height: 24.h),
            const LableTextWidget(text: 'My Holdings'),
            SizedBox(height: 16.h),
            const MyHoldingWidget(),
            SizedBox(height: 24.h),
            const LableTextWidget(text: 'Recent Transactions'),
            SizedBox(height: 16.h),
            const RecentTransactionsWidget(),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}

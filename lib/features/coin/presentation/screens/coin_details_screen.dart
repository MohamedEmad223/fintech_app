import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/spacing.dart';
import '../widgets/about_section.dart';
import '../widgets/action_buttons.dart';
import '../widgets/coin_header.dart';
import '../widgets/price_info.dart';
import '../widgets/coin_chart.dart';
import '../widgets/coin_statistics.dart';


class CoinDetailsScreen extends StatelessWidget {
  const CoinDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(20),
                const CoinHeader(),
                verticalSpace(20),
                const PriceInfo(),
                verticalSpace(20),
                const CoinChart(),
                verticalSpace(20),
                const CoinStatistics(),
                verticalSpace(20),
                const AboutSection(),
                verticalSpace(30),
                const ActionButtons(),
                verticalSpace(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:fintech_app/features/home/data/trending_model.dart';
import 'package:fintech_app/features/home/presentation/widgets/trending_now.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingNowListView extends StatelessWidget {
  TrendingNowListView({super.key});

  final List<TrendingModel> trendingList = [
    TrendingModel(
      name: 'Bitcoin',
      symbol: 'BTC',
      value: '1,132,151',
      percent: '12%',
      icon: 'assets/svgs/bitcoin.svg',
    ),
    TrendingModel(
      name: 'Ethereum',
      symbol: 'ETH',
      value: '1,132,151',
      percent: '12%',
      icon: 'assets/svgs/ethereum.svg',
    ),
    TrendingModel(
      name: 'Litecoin',
      symbol: 'LTC',
      value: '1,132,151',
      percent: '12%',
      icon: 'assets/svgs/lc.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trendingList.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final item = trendingList[index];
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: TrendingNow(item: item),
          );
        },
      ),
    );
  }
}

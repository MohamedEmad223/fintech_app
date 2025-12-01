import 'package:fintech_app/features/home/data/top_gainer_model.dart';
import 'package:fintech_app/features/home/presentation/widgets/top_gainer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopGainerListView extends StatelessWidget {
  TopGainerListView({super.key});

  final List<TopGainerModel> topGainerList = [
    TopGainerModel(
      name: 'Bitcoin',
      symbol: 'BTC',
      value: '1,132,151',
      percent: '12%',
      icon: 'assets/svgs/bitcoin.svg',
    ),
    TopGainerModel(
      name: 'Ethereum',
      symbol: 'ETH',
      value: '1,132,151',
      percent: '12%',
      icon: 'assets/svgs/ethereum.svg',
    ),
    TopGainerModel(
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
      height: 100.h,
      child: ListView.separated(
        itemCount: topGainerList.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return TopGainerCard(topGainerModel: topGainerList[index]);
        },
        separatorBuilder: (context, index) => SizedBox(height: 12.h),
      ),
    );
  }
}

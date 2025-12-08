import 'package:fintech_app/features/home/domain/entity/trending_coin_entity.dart';
import 'package:fintech_app/features/home/presentation/widgets/trending_now.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingNowListView extends StatelessWidget {
  final List<TrendingCoinEntity> trendingList;
  final VoidCallback? onViewAll;

  const TrendingNowListView({
    super.key,
    required this.trendingList,
    this.onViewAll,
  });

  @override
  Widget build(BuildContext context) {
    // Show only first 4 items
    final displayList = trendingList.take(4).toList();

    return SizedBox(
      height: 140.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: displayList.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final item = displayList[index];
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: TrendingNow(item: item),
          );
        },
      ),
    );
  }
}

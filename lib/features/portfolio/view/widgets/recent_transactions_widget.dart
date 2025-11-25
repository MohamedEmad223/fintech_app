import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/features/portfolio/view/widgets/transaction_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentTransactionsWidget extends StatelessWidget {
  const RecentTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      const TransactionItemWidget(
        type: TransactionType.buy,
        description: 'Buy Bitcoin',
        timeAgo: '2 hours ago',
        amount: '0.01 BTC',
        dollarValue: '\$452.50',
      ),
      const TransactionItemWidget(
        type: TransactionType.sell,
        description: 'Sell Ethereum',
        timeAgo: '1 day ago',
        amount: '0.5 ETH',
        dollarValue: '-\$1,050.45',
      ),
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactions.length,
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: transactions[index],
        );
      },
    );
  }
}

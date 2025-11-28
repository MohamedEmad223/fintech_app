import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/coin_cubit.dart';

class CurrencySelector extends StatelessWidget {
  const CurrencySelector({super.key});

  static const Map<String, String> _currencySymbols = {
    'usd': '\$',
    'eur': '€',
    'gbp': '£',
    'jpy': '¥',
    'btc': '₿',
    'eth': 'Ξ',
    'cad': 'C\$',
    'aud': 'A\$',
    'chf': 'CHF',
    'cny': '¥',
  };

  String _getCurrencySymbol(String currency) {
    return _currencySymbols[currency.toLowerCase()] ?? currency.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CoinCubit>();
    final selectedCurrency = cubit.currentCurrency;
    final supportedCurrencies = cubit.supportedCurrencies.isEmpty
        ? ['usd', 'eur', 'gbp', 'jpy', 'btc', 'eth']
        : cubit.supportedCurrencies.take(10).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Currency',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 38.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: supportedCurrencies.length,
            separatorBuilder: (context, index) => SizedBox(width: 8.w),
            itemBuilder: (context, index) {
              final currency = supportedCurrencies[index];
              final isSelected = selectedCurrency == currency;

              return GestureDetector(
                onTap: () {
                  if (!isSelected) {
                    cubit.changeCurrency(currency);
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                    vertical: 8.h,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xFF1D3A70)
                        : Colors.grey[100],
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color: isSelected
                          ? const Color(0xFF1D3A70)
                          : Colors.grey[300]!,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _getCurrencySymbol(currency),
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.grey[700],
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        currency.toUpperCase(),
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.grey[700],
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

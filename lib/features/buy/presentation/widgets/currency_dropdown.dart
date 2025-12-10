import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';

class CurrencyDropdown extends StatelessWidget {
  final String selectedCurrency;
  final List<String> currencies;
  final ValueChanged<String> onCurrencySelected;
  final bool isCrypto;

  const CurrencyDropdown({
    super.key,
    required this.selectedCurrency,
    required this.currencies,
    required this.onCurrencySelected,
    this.isCrypto = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 400.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Text(
              'Select Currency',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBlue,
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: currencies.length,
              itemBuilder: (context, index) {
                final currency = currencies[index];
                final isSelected = currency == selectedCurrency;

                return ListTile(
                  leading: Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        _getCurrencySymbol(currency),
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    currency,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkBlue,
                    ),
                  ),
                  subtitle: Text(
                    _getCurrencyName(currency),
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.greyText,
                    ),
                  ),
                  trailing: isSelected
                      ? Icon(
                          Icons.check_circle,
                          color: AppColors.primary,
                          size: 24.sp,
                        )
                      : null,
                  onTap: () {
                    onCurrencySelected(currency);
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String _getCurrencySymbol(String currency) {
    switch (currency.toUpperCase()) {
      case 'USD':
        return '\$';
      case 'EUR':
        return '€';
      case 'GBP':
        return '£';
      case 'JPY':
        return '¥';
      case 'CAD':
        return 'C\$';
      case 'AUD':
        return 'A\$';
      case 'ETH':
        return '⟠';
      case 'BTC':
        return '₿';
      case 'BNB':
        return 'BNB';
      case 'ADA':
        return 'ADA';
      case 'SOL':
        return 'SOL';
      case 'XRP':
        return 'XRP';
      case 'DOT':
        return 'DOT';
      case 'DOGE':
        return 'Ð';
      default:
        return currency;
    }
  }

  String _getCurrencyName(String currency) {
    switch (currency.toUpperCase()) {
      case 'USD':
        return 'US Dollar';
      case 'EUR':
        return 'Euro';
      case 'GBP':
        return 'British Pound';
      case 'JPY':
        return 'Japanese Yen';
      case 'CAD':
        return 'Canadian Dollar';
      case 'AUD':
        return 'Australian Dollar';
      case 'ETH':
        return 'Ethereum';
      case 'BTC':
        return 'Bitcoin';
      case 'BNB':
        return 'Binance Coin';
      case 'ADA':
        return 'Cardano';
      case 'SOL':
        return 'Solana';
      case 'XRP':
        return 'Ripple';
      case 'DOT':
        return 'Polkadot';
      case 'DOGE':
        return 'Dogecoin';
      default:
        return currency;
    }
  }
}

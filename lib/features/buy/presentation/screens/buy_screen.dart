import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/utils/spacing.dart';
import 'package:fintech_app/features/buy/data/mappers/buy_mapper.dart';
import 'package:fintech_app/features/buy/presentation/controllers/buy_cubit.dart';
import 'package:fintech_app/features/buy/presentation/controllers/buy_state.dart';
import 'package:fintech_app/features/buy/presentation/widgets/continue_button.dart';
import 'package:fintech_app/features/buy/presentation/widgets/currency_dropdown.dart';
import 'package:fintech_app/features/buy/presentation/widgets/currency_input_field.dart';
import 'package:fintech_app/features/buy/presentation/widgets/exchange_rate_display.dart';
import 'package:fintech_app/features/buy/presentation/widgets/fee_info_card.dart';
import 'package:fintech_app/features/buy/presentation/widgets/swap_currencies_button.dart';

class BuyScreen extends StatelessWidget {
  const BuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<BuyCubit>()..initialize(),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppColors.darkBlue),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            'Buy Crypto',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<BuyCubit, BuyState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              exchangeRateLoaded: (exchangeRate, transaction) {
                return _BuyScreenContent(
                  exchangeRate: exchangeRate,
                  transaction: transaction,
                );
              },
              error: (message) => _ErrorWidget(message: message),
            );
          },
        ),
      ),
    );
  }
}

class _BuyScreenContent extends StatelessWidget {
  final dynamic exchangeRate;
  final dynamic transaction;

  const _BuyScreenContent({
    required this.exchangeRate,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BuyCubit>();

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              verticalSpace(24),

              // You Pay Section
              Container(
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: CurrencyInputField(
                  label: 'You Pay',
                  amount: transaction.payAmount.toStringAsFixed(2),
                  currency: cubit.fromCurrency,
                  onAmountChanged: (value) {
                    final amount = double.tryParse(value);
                    if (amount != null && amount > 0) {
                      cubit.updatePayAmount(amount);
                    }
                  },
                  onCurrencyTap: () => _showCurrencyPicker(
                    context,
                    cubit.fromCurrency,
                    BuyMapper.getSupportedFiatCurrencies(),
                    (currency) => cubit.changeFromCurrency(currency),
                    isCrypto: false,
                  ),
                ),
              ),

              verticalSpace(16),

              // Swap Button
              SwapCurrenciesButton(onTap: () => cubit.swapCurrencies()),

              verticalSpace(16),

              // You Receive Section
              Container(
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: CurrencyInputField(
                  label: 'You Receive',
                  amount: transaction.receiveAmount.toStringAsFixed(8),
                  currency: cubit.toCurrency,
                  readOnly: true,
                  onCurrencyTap: () {
                    // Use dynamic list from cubit if available, fallback to mapper
                    final cryptoList = cubit.availableCryptos.isNotEmpty
                        ? cubit.availableCryptos
                        : BuyMapper.getSupportedCryptoCurrencies();

                    _showCurrencyPicker(
                      context,
                      cubit.toCurrency,
                      cryptoList,
                      (currency) => cubit.changeToCurrency(currency),
                      isCrypto: true,
                    );
                  },
                ),
              ),

              verticalSpace(16),

              // Exchange Rate Display
              ExchangeRateDisplay(
                fromCurrency: cubit.fromCurrency,
                toCurrency: cubit.toCurrency,
                rate: exchangeRate.rate,
              ),

              verticalSpace(24),

              // Fee Info Card
              FeeInfoCard(
                feePercentage: transaction.feePercentage,
                feeAmount: transaction.feeAmount,
                currency: cubit.fromCurrency,
              ),

              verticalSpace(32),

              // Continue Button
              ContinueButton(
                onPressed: () {
                  // TODO: Navigate to confirmation screen
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Continue to payment confirmation'),
                    ),
                  );
                },
              ),

              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }

  void _showCurrencyPicker(
    BuildContext context,
    String selectedCurrency,
    List<String> currencies,
    ValueChanged<String> onSelected, {
    bool isCrypto = false,
  }) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) => CurrencyDropdown(
        selectedCurrency: selectedCurrency,
        currencies: currencies,
        onCurrencySelected: onSelected,
        isCrypto: isCrypto,
      ),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  final String message;

  const _ErrorWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64.sp, color: AppColors.redError),
            verticalSpace(16),
            Text(
              'Error',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBlue,
              ),
            ),
            verticalSpace(8),
            Text(
              message,
              style: TextStyle(fontSize: 14.sp, color: AppColors.greyText),
              textAlign: TextAlign.center,
            ),
            verticalSpace(24),
            ElevatedButton(
              onPressed: () {
                context.read<BuyCubit>().initialize();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 12.h),
              ),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}

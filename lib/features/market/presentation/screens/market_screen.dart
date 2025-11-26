import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/features/market/presentation/controllers/market_cubit.dart';
import 'package:fintech_app/features/market/presentation/controllers/market_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/spacing.dart';
import '../widgets/category_filter_list.dart';
import '../widgets/crypto_list.dart';
import '../widgets/market_app_bar.dart';
import '../widgets/market_search_bar.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({super.key});

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  final ScrollController _scrollController = ScrollController();
  late MarketCubit _marketCubit;

  @override
  void initState() {
    super.initState();
    _marketCubit = sl<MarketCubit>()..getMarketCoins();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _marketCubit.close();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      _marketCubit.getMarketCoins();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _marketCubit,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: const MarketAppBar(),
        body: SafeArea(
          child: RefreshIndicator(
            onRefresh: () => _marketCubit.getMarketCoins(isRefresh: true),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(20),
                    MarketSearchBar(
                      onChanged: (query) {
                        _marketCubit.searchMarketCoins(query);
                      },
                    ),
                    verticalSpace(20),
                    const CategoryFilterList(),
                    verticalSpace(20),
                    BlocBuilder<MarketCubit, MarketState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () => const SizedBox.shrink(),
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                          success: (coins) => CryptoList(cryptos: coins),
                          error: (error) => Center(
                            child: Text(error.message ?? 'Unknown Error'),
                          ),
                          paginationLoading: (coins) => Column(
                            children: [
                              CryptoList(cryptos: coins),
                              verticalSpace(10),
                              const Center(child: CircularProgressIndicator()),
                            ],
                          ),
                          paginationError: (coins, error) => Column(
                            children: [
                              CryptoList(cryptos: coins),
                              verticalSpace(10),
                              Center(
                                child: Text(
                                  error.message ?? 'Error loading more',
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    verticalSpace(20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

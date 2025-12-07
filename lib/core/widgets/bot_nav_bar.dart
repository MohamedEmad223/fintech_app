import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/core/widgets/BotNavBar/cubit/cubit/botnavbar_cubit.dart';
import 'package:fintech_app/features/home/presentation/screens/home_screen.dart';
import 'package:fintech_app/features/market/presentation/screens/market_screen.dart';
import 'package:fintech_app/features/portfolio/presentation/portfolio_screen.dart';
import 'package:fintech_app/features/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomeScreen(),
      const MarketScreen(),
      const PortfolioScreen(),
      const SettingsScreen(),
    ];
    var botNavCubit = BlocProvider.of<BotnavbarCubit>(context);
    return BlocBuilder<BotnavbarCubit, BotnavbarState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          body: pages[botNavCubit.currentIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              ),
            ),
            //height: 70.h,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: AppColors.whiteColor,
                elevation: 0.0,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: botNavCubit.currentIndex == 0
                        ? SvgPicture.asset(AppAssets.home)
                        : SvgPicture.asset(AppAssets.homeUnselected),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: botNavCubit.currentIndex == 1
                        ? SvgPicture.asset(AppAssets.market)
                        : SvgPicture.asset(AppAssets.marketUnselected),
                    label: 'Market',
                  ),
                  BottomNavigationBarItem(
                    icon: botNavCubit.currentIndex == 2
                        ? SvgPicture.asset(AppAssets.portfolio)
                        : SvgPicture.asset(AppAssets.portfolioUnselected),
                    label: 'Portfolio',
                  ),
                  BottomNavigationBarItem(
                    icon: botNavCubit.currentIndex == 3
                        ? SvgPicture.asset(AppAssets.settings)
                        : SvgPicture.asset(AppAssets.settingsUnselected),
                    label: 'Settings',
                  ),
                ],
                currentIndex: botNavCubit.currentIndex,
                selectedItemColor: AppColors.primary,
                unselectedItemColor: AppColors.graytwo,
                unselectedLabelStyle: AppStyles.font12GreyMedium,
                selectedLabelStyle: AppStyles.font12PrimaryMedium,
                onTap: (value) {
                  botNavCubit.changeIndex(value);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

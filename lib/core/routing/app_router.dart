import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/features/home/presentation/home_screen.dart';
import 'package:fintech_app/features/home/presentation/logic/global_crypto/global_crypto_cubit.dart';
import 'package:fintech_app/features/home/presentation/logic/home_coin/home_coin_cubit.dart';
import 'package:fintech_app/features/home/presentation/logic/trending_cubit/trending_cubit.dart';
import 'package:fintech_app/features/portfolio/presentation/portfolio_screen.dart';
import 'package:flutter/material.dart';
import 'package:fintech_app/features/coin/presentation/screens/coin_details_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => sl<HomeCoinCubit>()..getHomeCoinsRequest(),
            ),
            BlocProvider(
              create: (context) => sl<GlobalCryptoCubit>()..getGlobalCryptoRequest(),
            ),
            BlocProvider(
              create: (context) => sl<TrendingCubit>()..getTrendingCoinsRequest(),
            ),
          ],
          child: const HomeScreen(),
        ));
      case Routes.portfolioScreen:
        return MaterialPageRoute(builder: (_) => const PortfolioScreen());
      case Routes.coinDetailsScreen:
        final args = settings.arguments;
        String? coinId;
        if (args is String) {
          coinId = args;
        } else if (args is Map<String, dynamic> && args['coinId'] is String) {
          coinId = args['coinId'] as String;
        }
        if (coinId == null) {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) =>
                Scaffold(body: Center(child: Text('No coinId provided'))),
          );
        }
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => CoinDetailsScreen(coinId: coinId!),
        );
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route Not Found"))),
        );
    }
  }
}


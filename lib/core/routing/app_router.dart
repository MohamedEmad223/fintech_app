import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/features/coin/presentation/screens/coin_details_screen.dart';
import 'package:fintech_app/features/auth/login_screen.dart';
import 'package:fintech_app/features/portfolio/presentation/portfolio_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
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
            builder: (_) => Scaffold(
              body: Center(child: Text('No coinId provided')),
            ),
          );
        }
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => CoinDetailsScreen(coinId: coinId!),
        );
      case Routes.portfolioScreen:
        return MaterialPageRoute(builder: (_) => const PortfolioScreen());
      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}

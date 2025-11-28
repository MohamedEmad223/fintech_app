import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/features/coin/presentation/screens/coin_details_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.coinDetailsScreen:
        final String coinId = settings.arguments as String;
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => CoinDetailsScreen(coinId: coinId),
        );
      default:
        return null;
    }
  }
}

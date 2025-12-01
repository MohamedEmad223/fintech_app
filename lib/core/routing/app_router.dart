import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/features/home/presentation/home_screen.dart';
import 'package:fintech_app/features/portfolio/presentation/portfolio_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.portfolioScreen:
        return MaterialPageRoute(builder: (_) => const PortfolioScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route Not Found"))),
        );
    }
  }
}

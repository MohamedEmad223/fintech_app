import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/features/auth/login_screen.dart';
import 'package:fintech_app/features/portfolio/view/portfolio_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.portfolioScreen:
        return MaterialPageRoute(builder: (_) => const PortfolioScreen());
      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}

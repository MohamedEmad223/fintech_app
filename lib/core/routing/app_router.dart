import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/features/portfolio/view/portfolio_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.loginScreen:
      //   return MaterialPageRoute(
      //     settings: settings,
      //     builder: (_) => BlocProvider(
      //       create: (context) => sl<LoginCubit>(),
      //       child: LoginScreen(),
      //     ),
      //   );
      case Routes.portfolioScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const PortfolioScreen(),
        );
      default:
        return null;
    }
  }
}

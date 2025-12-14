import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/widgets/BotNavBar/cubit/cubit/botnavbar_cubit.dart';
import 'package:fintech_app/core/widgets/bot_nav_bar.dart';
import 'package:fintech_app/features/auth/biometric/presentation/choose_auth_screen.dart';
import 'package:fintech_app/features/auth/biometric/presentation/face_id_screen.dart';
import 'package:fintech_app/features/auth/biometric/presentation/finger_print_scan_complete.dart';
import 'package:fintech_app/features/auth/biometric/presentation/finger_print_screen.dart';
import 'package:fintech_app/features/auth/biometric/presentation/set_face_id_or_skip_screen.dart';
import 'package:fintech_app/features/auth/biometric/presentation/verifiy_account_screen.dart';
import 'package:fintech_app/features/auth/login/presentation/login_screen.dart';
import 'package:fintech_app/features/auth/register/presentation/register_screen.dart';
import 'package:fintech_app/features/coin/presentation/screens/coin_details_screen.dart';
import 'package:fintech_app/features/on_boarding/on_boarding_screen.dart';
import 'package:fintech_app/features/portfolio/presentation/portfolio_screen.dart';
import 'package:fintech_app/features/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.chooseAuthScreen:
        return MaterialPageRoute(builder: (_) => const ChooseAuthScreen());
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
      case Routes.settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case Routes.botnavbar:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => BotnavbarCubit(),
            child: const BottomNav(),
          ),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.fingerPrintScreen:
        return MaterialPageRoute(builder: (_) => FingerPrintScreen());
      case Routes.verifyAccountScreen:
        return MaterialPageRoute(builder: (_) => const VerifiyAccountScreen());
      case Routes.faceIdScreen:
        return MaterialPageRoute(builder: (_) => const FaceIdScreen());
      case Routes.fingerPrintScanComplete:
        return MaterialPageRoute(
          builder: (_) => const FingerPrintScanComplete(),
        );
      case Routes.setFaceIdOrSkipScreen:
        return MaterialPageRoute(builder: (_) => const SetFaceIdOrSkipScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route Not Found"))),
        );
    }
  }
}

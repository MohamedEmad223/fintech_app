import 'package:fintech_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/theming/theme/theme_cubit.dart';
import 'core/theming/theme/theme_state.dart';

class FintechApp extends StatelessWidget {
  const FintechApp({super.key, this.initialRoute});

  final String? initialRoute;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 827),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Fintech App',
            theme: themeState.themeData,
            onGenerateRoute: AppRouter().generateRoute,
            initialRoute: initialRoute,
          );
        },
      ),
    );
  }

  // checkIfLoggedInUser() async {
  //   final isLoggedIn = await SharedPrefHelper.getString(SharedPrefKeys.uid);
  //   return isLoggedIn
  //       ? Routes.botnavbar
  //       : Routes.loginScreen;
  // }
}

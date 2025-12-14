import 'package:fintech_app/core/extensions/navigation_extension.dart';
import 'package:fintech_app/core/helpers/helper_methods.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
            );
          },
          success: (data) {
            Navigator.of(context).pop();
            HelperMethods.success(context, 'Welcome to your account');
            context.pushNameAndRemoveUntil(
              Routes.botnavbar,
              predicate: (route) => false,
            );
          },
          error: (error) {
            Navigator.of(context).pop();
            HelperMethods.error(context, error.toString());
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

import 'package:fintech_app/core/extensions/navigation_extension.dart';
import 'package:fintech_app/core/helpers/helper_methods.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/features/auth/register/presentation/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
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
            HelperMethods.success(context, data);
            context.pushNameAndRemoveUntil(
              Routes.fingerPrintScreen,
              predicate: (route) => false,
            );
          },
          error: (error) {
            Navigator.of(context).pop();
            HelperMethods.error(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

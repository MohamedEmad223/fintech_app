import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/features/auth/biometric/presentation/choose_auth_screen.dart';
import 'package:fintech_app/features/on_boarding/presentation/cubit/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, this.cubit});
  final OnboardingCubit? cubit;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Visibility(
        visible: cubit != null,
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const ChooseAuthScreen()),
            );
          },
          child: Text('Skip', style: AppStyles.font19PrimaryMedium),
        ),
      ),
    );
  }
}

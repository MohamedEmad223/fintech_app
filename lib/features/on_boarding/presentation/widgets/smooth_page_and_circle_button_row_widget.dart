import 'package:fintech_app/features/on_boarding/presentation/cubit/cubit/onboarding_cubit.dart';
import 'package:fintech_app/features/on_boarding/presentation/widgets/circle_button_widget.dart';
import 'package:fintech_app/features/on_boarding/presentation/widgets/smooth_page_indicator_widget.dart';
import 'package:flutter/material.dart';

class SmoothPageAndCircleButtonRowWidget extends StatelessWidget {
  const SmoothPageAndCircleButtonRowWidget({super.key, required this.cubit});
  final OnboardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SmoothPageIndicatorWidget(cubit: cubit),
        CircleButtonWidget(cubit: cubit),
      ],
    );
  }
}

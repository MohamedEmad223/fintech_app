import 'package:fintech_app/features/on_boarding/presentation/cubit/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorWidget extends StatelessWidget {
  const SmoothPageIndicatorWidget({super.key, required this.cubit});
  final OnboardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: cubit.pageController,
      count: cubit.onBoardingData.length,
      effect: ExpandingDotsEffect(
        activeDotColor: const Color(0xff1C4393),
        dotColor: const Color(0xff1C4393).withValues(alpha: 0.3),
        dotHeight: 8,
        dotWidth: 8,
        spacing: 6,
      ),
    );
  }
}

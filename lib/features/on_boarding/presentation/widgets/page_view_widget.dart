import 'package:fintech_app/features/on_boarding/presentation/cubit/cubit/onboarding_cubit.dart';
import 'package:fintech_app/features/on_boarding/presentation/cubit/cubit/onboarding_state.dart';
import 'package:fintech_app/features/on_boarding/presentation/widgets/animated_opacity_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key, required this.cubit});
  final OnboardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: cubit.pageController,
        itemCount: cubit.onBoardingData.length,
        onPageChanged: cubit.changePage,
        itemBuilder: (_, i) {
          return BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
              final cubit = context.watch<OnboardingCubit>();
              final isActive = cubit.currentIndex == i;
              return AnimatedOpacityWidget(
                isActive: isActive,
                index: i,
                cubit: cubit,
              );
            },
          );
        },
      ),
    );
  }
}

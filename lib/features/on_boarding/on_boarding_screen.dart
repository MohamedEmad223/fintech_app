import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/features/auth/choose_auth_screen.dart';
import 'package:fintech_app/features/on_boarding/presentation/widgets/page_view_widget.dart';
import 'package:fintech_app/features/on_boarding/presentation/widgets/skip_button.dart';
import 'package:fintech_app/features/on_boarding/presentation/widgets/smooth_page_and_circle_button_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fintech_app/features/on_boarding/presentation/cubit/cubit/onboarding_cubit.dart';
import 'package:fintech_app/features/on_boarding/presentation/cubit/cubit/onboarding_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          state.whenOrNull(
            goHomeState: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const ChooseAuthScreen()),
              );
            },
          );
        },
        builder: (context, state) {
          final cubit = context.watch<OnboardingCubit>();
          return Scaffold(
            backgroundColor: AppColors.whiteColor,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0.h),
                child: Column(
                  children: [
                    SkipButton(cubit: cubit.currentIndex > 0 ? cubit : null),
                    PageViewWidget(cubit: cubit),
                    SizedBox(height: 0.h),
                    SmoothPageAndCircleButtonRowWidget(cubit: cubit),
                    SizedBox(height: 40.h),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

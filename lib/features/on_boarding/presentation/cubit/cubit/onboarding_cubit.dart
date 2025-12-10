import 'package:bloc/bloc.dart';
import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/features/on_boarding/data/model/on_boarding_model.dart';
import 'package:fintech_app/features/on_boarding/presentation/cubit/cubit/onboarding_state.dart';
import 'package:flutter/material.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState.initial());

  List<OnboardingModel> onBoardingData = [
    OnboardingModel(
      image: AppAssets.onBoardingOne,
      title: 'Welcome To Crypto X',
    ),
    OnboardingModel(
      image: AppAssets.onBoardingTwo,
      title: 'Transaction Security ',
    ),
    OnboardingModel(
      image: AppAssets.onBoardingThree,
      title: 'Fast and reliable Market updated',
    ),
  ];

  PageController pageController = PageController(initialPage: 0);

  int currentIndex = 0;
  changePage(int index) {
    currentIndex = index;
    emit(OnboardingState.nextState(currentIndex));
  }

  transition() {
    if (currentIndex >= onBoardingData.length - 1) {
      emit(const OnboardingState.goHomeState());
    } else {
      currentIndex++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.decelerate,
      );
      emit(OnboardingState.nextState(currentIndex));
    }
  }
}

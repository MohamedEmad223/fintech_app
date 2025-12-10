import 'package:fintech_app/features/on_boarding/presentation/cubit/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatelessWidget {
  const AnimatedOpacityWidget({
    super.key,
    required this.isActive,
    required this.index,
    required this.cubit,
  });
  final bool isActive;
  final int index;
  final OnboardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 350),
      opacity: isActive ? 1 : 0.4,
      child: AnimatedScale(
        duration: const Duration(milliseconds: 300),
        scale: isActive ? 1 : 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(cubit.onBoardingData[index].image, height: 250),
            const SizedBox(height: 50),
            index == 0
                ? Text.rich(
                    TextSpan(
                      text: 'Welcome To ',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: isActive ? Colors.black : Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: 'Crypto X',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: isActive
                                ? const Color(0xff1C4393)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  )
                : Text(
                    cubit.onBoardingData[index].title,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: isActive ? Colors.black : Colors.grey,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

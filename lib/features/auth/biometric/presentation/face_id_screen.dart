import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/core/extensions/navigation_extension.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/features/auth/biometric/presentation/cubit/biometric_cubit.dart';
import 'package:fintech_app/features/auth/biometric/presentation/cubit/biometric_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FaceIdScreen extends StatelessWidget {
  const FaceIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<BiometricCubit>()
        ..authenticateWithBiometrics(
          email: '',
          password: '',
          localizedReason: 'Scan your face to verify your identity',
        ),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: BlocConsumer<BiometricCubit, BiometricState>(
          listener: (context, state) {
            state.whenOrNull(
              authenticated: (uid) {
                context.pushNameAndRemoveUntil(
                  Routes.loginScreen,
                  predicate: (route) => false,
                );
              },
              error: (message) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(message)));
              },
              notSupported: () {
                // If Face ID specifically isn't supported, might fallback or show error
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Face ID is not supported on this device'),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return Center(
              child: Padding(
                padding: EdgeInsets.only(right: 30.h, left: 30.h, top: 120.w),
                child: Column(
                  children: [
                    SvgPicture.asset(AppAssets.faceSvg),
                    SizedBox(height: 200.h),
                    Text(
                      'Please wait until your scanning is complete',
                      style: AppStyles.font28PrimaryBold,
                      textAlign: TextAlign.center,
                    ),
                    if (state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    ))
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: const CircularProgressIndicator(),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

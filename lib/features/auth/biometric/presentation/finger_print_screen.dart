import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/core/extensions/navigation_extension.dart';
import 'package:fintech_app/core/routing/routes.dart';
import 'package:fintech_app/core/theming/app_assets.dart';
import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/features/auth/biometric/presentation/cubit/biometric_cubit.dart';
import 'package:fintech_app/features/auth/biometric/presentation/cubit/biometric_state.dart';
import 'package:fintech_app/features/auth/widgets/positioned_decoration_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FingerPrintScreen extends StatelessWidget {
  const FingerPrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<BiometricCubit>()
        ..authenticateWithBiometrics(
          email: '',
          password: '',
          localizedReason: 'Please verify your identity',
        ),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: BlocConsumer<BiometricCubit, BiometricState>(
          listener: (context, state) {
            state.whenOrNull(
              authenticated: (uid) {
                context.pushNameAndRemoveUntil(
                  Routes.fingerPrintScanComplete,
                  predicate: (route) => false,
                );
              },
              error: (message) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(message)));
              },
              notSupported: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Biometric authentication is not supported'),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return Stack(
              children: [
                const PositionedDecorationCircle(),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Touch ID sensor to verify\nyourself',
                          style: AppStyles.font28BlackBold,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 80.h),
                        GestureDetector(
                          onTap: () {
                            context
                                .read<BiometricCubit>()
                                .authenticateWithBiometrics(
                                  email: '',
                                  password: '',
                                  localizedReason:
                                      'Please verify your identity',
                                );
                          },
                          child: SvgPicture.asset(
                            AppAssets.fingerprintSvg,
                            width: 120.w,
                            height: 120.h,
                          ),
                        ),
                        SizedBox(height: 80.h),
                        Text(
                          'Please verify your identity using touch\nID and it will proceed automatically.',
                          style: AppStyles.font16GreyMedium,
                          textAlign: TextAlign.center,
                        ),
                        if (state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        ))
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: CircularProgressIndicator(),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

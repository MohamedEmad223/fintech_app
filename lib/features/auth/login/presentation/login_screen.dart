import 'package:fintech_app/core/theming/app_colors.dart';

import 'package:fintech_app/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:fintech_app/features/auth/login/presentation/widgets/build_form_feild_login_body.dart';
import 'package:fintech_app/features/auth/widgets/build_header_of_auth.dart';
import 'package:fintech_app/features/auth/login/presentation/widgets/do_not_have_an_account.dart';
import 'package:fintech_app/features/auth/login/presentation/widgets/finger_print_and_face_id_widget.dart';
import 'package:fintech_app/features/auth/login/presentation/widgets/or_login_with_widget.dart';
import 'package:fintech_app/features/auth/widgets/positioned_decoration_circle.dart';
import 'package:fintech_app/features/auth/login/presentation/widgets/remember_me_and_forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/features/auth/biometric/presentation/cubit/biometric_cubit.dart';
import 'package:fintech_app/features/auth/biometric/presentation/cubit/biometric_state.dart';
import 'package:fintech_app/core/extensions/navigation_extension.dart';
import 'package:fintech_app/core/routing/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<LoginCubit>()),
        BlocProvider(create: (context) => sl<BiometricCubit>()),
      ],
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: BlocListener<BiometricCubit, BiometricState>(
          listener: (context, state) {
            state.whenOrNull(
              authenticated: (uid) {
                context.pushNameAndRemoveUntil(
                  Routes.botnavbar,
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
          child: Stack(
            children: [
              PositionedDecorationCircle(),
              SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      children: [
                        SizedBox(height: 40.h),
                        BuildHeaderOfAuth(
                          title: 'Login To Your Account',
                          subtitle: 'Welcome back you\nve been missed!',
                        ),
                        SizedBox(height: 40.h),
                        BuildFormFeildLoginBody(),
                        SizedBox(height: 16.h),
                        RememberMeAndForgetPassword(),
                        SizedBox(height: 40.h),
                        OrLoginWithWidget(),
                        SizedBox(height: 25.h),
                        Builder(
                          builder: (context) {
                            return FingerPrintAndFaceIdWidget(
                              fingerprintOnTap: () {
                                context
                                    .read<BiometricCubit>()
                                    .authenticateWithBiometrics(
                                      email: '',
                                      password: '',
                                      localizedReason: 'Authenticate to login',
                                    );
                              },
                              faceIdOnTap: () {
                                context
                                    .read<BiometricCubit>()
                                    .authenticateWithBiometrics(
                                      email: '',
                                      password: '',
                                      localizedReason: 'Authenticate to login',
                                    );
                              },
                            );
                          },
                        ),
                        SizedBox(height: 25.h),
                        DoNotHaveAnAccountWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

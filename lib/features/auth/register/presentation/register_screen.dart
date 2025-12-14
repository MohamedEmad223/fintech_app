import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/features/auth/register/presentation/widgets/already_have_an_account_widget.dart';
import 'package:fintech_app/features/auth/register/presentation/widgets/build_form_feild_register_body.dart';
import 'package:fintech_app/features/auth/register/presentation/cubit/register_cubit.dart';
import 'package:fintech_app/features/auth/register/presentation/widgets/register_bloc_listner.dart';
import 'package:fintech_app/features/auth/widgets/build_header_of_auth.dart';
import 'package:fintech_app/features/auth/widgets/positioned_decoration_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RegisterCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
          children: [
            PositionedDecorationCircle(),
            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    children: [
                      RegisterBlocListener(),
                      SizedBox(height: 40.h),
                      BuildHeaderOfAuth(
                        title: 'Create Your Account',
                        subtitle:
                            'Sign up to enjoy the best managing\\nexperience!',
                      ),
                      SizedBox(height: 40.h),
                      BuildFormFeildRegisterBody(),
                      SizedBox(height: 32.h),
                      Builder(
                        builder: (context) {
                          return CustomButton(
                            text: 'Register',
                            onPressed: () {
                              final cubit = context.read<RegisterCubit>();
                              if (cubit.formKey.currentState!.validate()) {
                                cubit.register();
                              }
                            },
                            filledColor: AppColors.primary,
                            height: 56.h,
                            radius: 28.r,
                          );
                        },
                      ),
                      SizedBox(height: 24.h),
                      AlreadyHaveAnAccountWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

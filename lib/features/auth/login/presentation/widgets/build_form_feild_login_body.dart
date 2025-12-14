import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/widgets/custom_button.dart';
import 'package:fintech_app/core/widgets/custom_text_field.dart';
import 'package:fintech_app/features/auth/login/presentation/cubit/login_cubit.dart';
import 'package:fintech_app/features/auth/login/presentation/widgets/login_bloc_listner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildFormFeildLoginBody extends StatefulWidget {
  const BuildFormFeildLoginBody({super.key});

  @override
  State<BuildFormFeildLoginBody> createState() => _BuildFormFeildLoginBodyState();
}

class _BuildFormFeildLoginBodyState extends State<BuildFormFeildLoginBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Email-ID',
            prefixIcon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Email is required';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            hintText: 'Password',
            prefixIcon: Icons.lock_outline,
            obscureText: true,
            controller: passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Password is required';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          CustomButton(
            text: 'Login',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<LoginCubit>().login(
                      email: emailController.text,
                      password: passwordController.text,
                    );
              }
            },
            filledColor: AppColors.primary,
            height: 56.h,
            radius: 28.r,
          ),
          LoginBlocListner()
        ],
      ),
    );
  }
}
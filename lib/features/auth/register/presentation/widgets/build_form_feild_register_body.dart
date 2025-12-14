import 'package:fintech_app/core/widgets/custom_text_field.dart';
import 'package:fintech_app/features/auth/register/presentation/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildFormFeildRegisterBody extends StatelessWidget {
  const BuildFormFeildRegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'First Name',
            prefixIcon: Icons.person_outline,
            keyboardType: TextInputType.name,
            controller: cubit.firstNameController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your first name';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            hintText: 'Last Name',
            prefixIcon: Icons.person_outline,
            keyboardType: TextInputType.name,
            controller: cubit.lastNameController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your last name';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            hintText: 'Email-ID',
            prefixIcon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
            controller: cubit.emailController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              ).hasMatch(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            hintText: 'Password',
            prefixIcon: Icons.lock_outline,
            obscureText: true,
            controller: cubit.passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            hintText: 'Confirm Password',
            prefixIcon: Icons.lock_outline,
            obscureText: true,
            controller: cubit.confirmPasswordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your password';
              }
              if (value != cubit.passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            hintText: 'xxx xxx xxxx',
            prefixIcon: Icons.phone_outlined,
            keyboardType: TextInputType.phone,
            controller: cubit.phoneController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your phone number';
              }
              if (value.length < 10) {
                return 'Please enter a valid phone number';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}

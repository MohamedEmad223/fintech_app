import 'package:fintech_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildFormFeildRegisterBody extends StatelessWidget {
  const BuildFormFeildRegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: 'First Name',
          prefixIcon: Icons.person_outline,
          keyboardType: TextInputType.name,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          hintText: 'Last Name',
          prefixIcon: Icons.person_outline,
          keyboardType: TextInputType.name,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          hintText: 'Email-ID',
          prefixIcon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          hintText: 'Password',
          prefixIcon: Icons.lock_outline,
          obscureText: true,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          hintText: 'Confirm Password',
          prefixIcon: Icons.lock_outline,
          obscureText: true,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          hintText: 'xxx xxx xxxx',
          prefixIcon: Icons.phone_outlined,
          keyboardType: TextInputType.phone,
        ),
      ],
    );
  }
}
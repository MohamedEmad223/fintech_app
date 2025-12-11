import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountWidget extends StatelessWidget {
  const AlreadyHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account? ', style: AppStyles.font28PrimaryBold),
        GestureDetector(
          onTap: () {},
          child: Text('login', style: AppStyles.font18GreyMedium),
        ),
      ],
    );
  }
}

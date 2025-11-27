import 'package:fintech_app/core/theming/app_styles.dart' show AppStyles;
import 'package:flutter/material.dart';

class LableTextWidget extends StatelessWidget {
  const LableTextWidget({super.key, required this.text, this.fontSize});
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.font24PrimaryLatoBold.copyWith(fontSize: fontSize),
    );
  }
}

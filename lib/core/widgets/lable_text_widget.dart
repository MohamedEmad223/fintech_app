import 'package:fintech_app/core/theming/app_styles.dart' show AppStyles;
import 'package:flutter/material.dart';

class LableTextWidget extends StatelessWidget {
  final String text;
  final String? viewAll;
  final double? fontSize;
  const LableTextWidget({
    super.key,
    required this.text,
    this.fontSize,
    this.viewAll,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppStyles.font24PrimaryLatoBold.copyWith(fontSize: fontSize),
        ),
        const Spacer(),
        if (viewAll != null)
          Text(viewAll!, style: AppStyles.font16mediumPrimary),
      ],
    );
  }
}

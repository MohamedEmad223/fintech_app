import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_styles.dart';

class MarketAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MarketAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Text('Crypto Market', style: AppStyles.font24DarkBlueBold),
      actions: [
        // Placeholder for any actions if needed, or just spacing
        SizedBox(width: 20.w),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}

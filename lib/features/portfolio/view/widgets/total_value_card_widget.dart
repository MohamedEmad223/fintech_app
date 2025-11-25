import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/features/portfolio/view/widgets/positioned_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalValueCard extends StatelessWidget {
  const TotalValueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(maxWidth: 600),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Stack(
        children: [
          PositionedContainerWidget(
            right: -80,
            top: -80,
            width: 180,
            height: 180,
          ),
          PositionedContainerWidget(
            right: -60,
            top: -60,
            width: 140,
            height: 140,
          ),
          PositionedContainerWidget(
            right: -40,
            top: -40,
            width: 100,
            height: 100,
          ),
          PositionedContainerWidget(
            left: -80,
            bottom: -80,
            width: 180,
            height: 180,
          ),
          PositionedContainerWidget(
            left: -80,
            bottom: -80,
            width: 180,
            height: 180,
          ),
          PositionedContainerWidget(
            left: -60,
            bottom: -60,
            width: 140,
            height: 140,
          ),
          PositionedContainerWidget(
            left: -40,
            bottom: -40,
            width: 100,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Total Value',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '\$143,421.20',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_upward_rounded,
                      color: Color(0xFF4ade80),
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '+2.5% (\$305.20) Today',
                      style: TextStyle(
                        color: Color(0xFF4ade80),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

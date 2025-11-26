import 'package:flutter/material.dart';

class PositionedContainerWidget extends StatelessWidget {
  const PositionedContainerWidget({
    super.key,
    this.right,
    this.top,
    required this.width,
    required this.height,
    this.left,
    this.bottom,
  });
  final double? right;
  final double? top;
  final double? left;
  final double? bottom;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      left: left,
      bottom: bottom,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withValues(alpha: 0.05),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/spacing.dart';

class AboutSection extends StatefulWidget {
  final String description;

  const AboutSection({super.key, required this.description});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  bool _isExpanded = false;

  String _cleanDescription(String desc) {
    String cleaned = desc.replaceAll(RegExp(r'<[^>]*>'), '');
    cleaned = cleaned.replaceAll(RegExp(r'\s+'), ' ').trim();
    return cleaned;
  }

  @override
  Widget build(BuildContext context) {
    final cleanedDescription = _cleanDescription(widget.description);
    final hasLongDescription = cleanedDescription.length > 200;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF111827),
          ),
        ),
        verticalSpace(12),
        Text(
          cleanedDescription.isNotEmpty
              ? cleanedDescription
              : 'No description available.',
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey[600],
            height: 1.5,
          ),
          maxLines: _isExpanded ? null : 3,
          overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        if (hasLongDescription) ...[
          verticalSpace(8),
          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text(
              _isExpanded ? 'Read Less' : 'Read More',
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF1D3A70),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ],
    );
  }
}

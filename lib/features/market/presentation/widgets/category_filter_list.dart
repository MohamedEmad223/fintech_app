import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class CategoryFilterList extends StatefulWidget {
  const CategoryFilterList({super.key});

  @override
  State<CategoryFilterList> createState() => _CategoryFilterListState();
}

class _CategoryFilterListState extends State<CategoryFilterList> {
  final List<String> categories = ['All', 'DeFi', 'NFT', 'Gaming', 'Metaverse'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => horizontalSpace(10),
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.chipSelected
                    : AppColors.chipUnselected,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: isSelected
                      ? AppStyles.font14WhiteMedium
                      : AppStyles.font14DarkBlueMedium,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

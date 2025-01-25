import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/constants/constants.dart';

class CategoryList extends StatelessWidget {
  CategoryList({super.key});
  final List<String> demoCategoryList = [
    'Books',
    'Game',
    'Music',
    'camera',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ListView.builder(
        itemBuilder: (itemBuilder, index) => _categoryItem(
            onTap: () {
              debugPrint('category $index');
            },
            categoryName: demoCategoryList[index]),
        itemCount: 4,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _categoryItem(
          {required VoidCallback onTap, required String categoryName}) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(right: 10.w),
          height: 30.h,
          width: 95.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColor.darkGray,
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(2.w),
              child: Text(
                categoryName,
                style: AppTextStyles.robotoFont17SoftGray100Medium1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      );
}

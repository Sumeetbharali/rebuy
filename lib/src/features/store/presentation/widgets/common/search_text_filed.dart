import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/widgets/app_text_field.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key, this.padding});
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding?.w ?? 27.w),
      child: AppTextField(
        hintText: 'Search for books,guitar and more...',
        controller: TextEditingController(),
        suffixIcon: Icon(Icons.search, color: AppColor.darkGray),
      ),
    );
  }
}

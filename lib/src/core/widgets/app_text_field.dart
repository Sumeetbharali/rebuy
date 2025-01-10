import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/constants/constants.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.suffixIcon,
    required this.hintText,
    required this.controller,
    this.obscureText,
    this.validator,
  });
  final Widget? suffixIcon;
  final String hintText;
  final TextEditingController controller;
  final bool? obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: AppColor.softGray,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20.r),
        ),
        suffixIcon: suffixIcon,
        hintStyle: AppTextStyles.robotoFont16DarkGray50Medium1,
        labelStyle: AppTextStyles.robotoFont16DarkGray100Medium1,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
      ),
    );
  }
}

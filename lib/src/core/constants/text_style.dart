import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/constants/colors.dart';

class FontWeightHelper {
  static const FontWeight thin = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}

//
class AppTextStyles {
  // to calculate the height of the text use this ratio font height in design divided by font size

  // we add font family and size and color with percentage and type then font height
  // static TextStyle poppinsFont68White100Regular1_14 = TextStyle(
  //   fontSize: 68.sp,
  //   fontFamily: 'Poppins',
  //   fontWeight: FontWeightHelper.regular,
  //   color: AppColor.white,
  //   height: 1.14.sp,
  // );
}

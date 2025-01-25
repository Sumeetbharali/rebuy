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

  //**  we write [font family],[size],[color],[opacity percentage],[font weight] and [font height]*/
  static TextStyle dosisFont32DarkGray100ExtraBold1 = TextStyle(
    fontSize: 32.sp,
    fontFamily: 'Dosis',
    fontWeight: FontWeightHelper.extraBold,
    color: AppColor.darkGray,
    height: 1.sp,
  );
  static TextStyle robotoFont32DarkGray100ExtraBold1 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.extraBold,
    color: AppColor.darkGray,
    height: 1.sp,
  );
  static TextStyle robotoFont26DarkGray100ExtraBold1 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeightHelper.extraBold,
    color: AppColor.darkGray,
    height: 1.sp,
  );
  static TextStyle dosisFont50DarkGray100ExtraBold1 = TextStyle(
    fontSize: 50.sp,
    fontFamily: 'Dosis',
    fontWeight: FontWeightHelper.extraBold,
    color: AppColor.darkGray,
    height: 1.sp,
  );
  static TextStyle dosisFont24White90ExtraBold1 = TextStyle(
    fontSize: 24.sp,
    fontFamily: 'Dosis',
    fontWeight: FontWeightHelper.extraBold,
    color: AppColor.white.withOpacity(0.9),
    height: 1.sp,
  );
  static TextStyle robotoFont24VibrantRed100Regular1 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.vibrantRed,
    height: 1.sp,
  );
  static TextStyle robotoFont24Black100ExtraBold1 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.extraBold,
    color: AppColor.black,
    height: 1.sp,
  );
  static TextStyle robotoFont14DarkGray50Regular1 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.darkGray.withOpacity(0.5),
    height: 1.sp,
  );
  static TextStyle robotoFont14DustyRose100Regular1 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.dustyRose,
    height: 1.sp,
  );
  static TextStyle robotoFont14White100Medium1 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.white,
    height: 1.sp,
  );
  static TextStyle robotoFont16DarkGray50Medium1 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.darkGray.withOpacity(0.5),
    height: 1.sp,
  );
  static TextStyle robotoFont17DarkGray100Medium1 = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.darkGray,
    height: 1.sp,
  );
  static TextStyle robotoFont17SoftGray100Medium1 = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.lightestGray,
    height: 1.sp,
  );
  static TextStyle robotoFont16DarkGray100Medium1 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.darkGray,
    height: 1.sp,
  );
  static TextStyle robotoFont16Black100Medium1 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.black,
    height: 1.sp,
  );
  static TextStyle robotoFont16Black100Regular1 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.black,
    height: 1.sp,
  );
  static TextStyle robotoFont15GraphiteGray100SemiBold1 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.graphiteGray,
    height: 1.sp,
  );
  static TextStyle robotoFont18DarkGray50Regular1 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.darkGray.withOpacity(0.5),
    height: 1.sp,
  );
  static TextStyle robotoFont18VibrantRed100Medium1 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.vibrantRed,
    height: 1.sp,
  );
  static TextStyle robotoFont19DarkGray70ExtraBold1 = TextStyle(
    fontSize: 19.sp,
    fontWeight: FontWeightHelper.extraBold,
    color: AppColor.darkGray.withOpacity(0.7),
    height: 1.sp,
  );
  static TextStyle robotoFont17DarkGray50Regular1 = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.darkGray.withOpacity(0.5),
    height: 1.sp,
  );
}

import 'package:flutter/material.dart';
import 'package:rebuy/src/core/constants/colors.dart';

class AppThemes {
  static ThemeData defaultTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.lightestGray,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.lightestGray,
    ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: AppColors.purple,
    //     foregroundColor: AppColors.white,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(8.0),
    //     ),
    //   ),
    // ),
  );
}

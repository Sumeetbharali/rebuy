import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/constants/constants.dart';

class AuthenticationButton extends StatelessWidget {
  const AuthenticationButton(
      {super.key, required this.text, required this.onTap});
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.0.w, right: 35.0.w),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColor.vibrantRed, AppColor.dustyRose]),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Container(
            width: double.infinity,
            height: 55.h,
            alignment: Alignment.center,
            child: Text(
              text,
              style: AppTextStyles.dosisFont24White90ExtraBold1,
            ),
          ),
        ),
      ),
    );
  }
}

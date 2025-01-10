import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.w),
      child: Row(
        children: [
          commonSocialButton(
            svgPath: "assets/svgs/google.svg",
            onTap: () {
              debugPrint("google");
            },
          ),
          horizontalSpace(width: 14),
          commonSocialButton(
            svgPath: "assets/svgs/twitter.svg",
            onTap: () {
              debugPrint("twitter");
            },
          ),
          horizontalSpace(width: 14),
          commonSocialButton(
            svgPath: "assets/svgs/apple.svg",
            onTap: () {
              debugPrint("apple");
            },
          ),
        ],
      ),
    );
  }

  Widget commonSocialButton(
      {required String svgPath, required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55.h,
        width: 105.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColor.softGray,
        ),
        child: Center(
            child: SvgPicture.asset(
          svgPath,
          // width: 30.w,
          // height: 30.h,
        )),
      ),
    );
  }
}

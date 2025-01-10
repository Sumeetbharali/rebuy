import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebuy/src/core/constants/constants.dart';

class ReBuyAppBar extends StatelessWidget {
  const ReBuyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 55.h),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            backButton(context: context),
            Padding(
              padding: EdgeInsets.only(right: 44.w),
              child: Text(
                'ReBuy',
                style: AppTextStyles.dosisFont32DarkGray100ExtraBold1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget backButton({required BuildContext context}) {
    return Padding(
      padding: EdgeInsets.only(left: 35.w),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Align(
          alignment: Alignment.centerLeft,
          child: SvgPicture.asset(
            "assets/svgs/back_icon.svg",
            height: 46.h,
            width: 46.w,
          ),
        ),
      ),
    );
  }
}

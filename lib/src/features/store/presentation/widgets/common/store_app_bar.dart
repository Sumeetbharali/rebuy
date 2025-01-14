import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';

class StoreAppBar extends StatelessWidget {
  const StoreAppBar(
      {super.key,
      required this.leading,
      required this.title,
      this.leftPadding});
  final double? leftPadding;
  final Widget leading;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: leftPadding?.w ?? 35.w, right: 25.w, top: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leading,
          horizontalSpace(width: 18.w),
          title,
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              "assets/svgs/menu.svg",
              height: 19.h,
              width: 26.w,
            ),
          ),
        ],
      ),
    );
  }
}

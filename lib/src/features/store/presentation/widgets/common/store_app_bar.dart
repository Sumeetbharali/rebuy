import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';

class StoreAppBar extends StatelessWidget {
  const StoreAppBar(
      {super.key,
      this.leading,
      this.title,
      this.titleText,
      this.leftPadding,
      this.rightPadding})
      : assert(
            (title == null && titleText != null) ||
                (title != null && titleText == null),
            'Either title or titleText must be provided, but not both');
  final double? leftPadding;
  final Widget? leading;
  final Widget? title;
  final String? titleText;
  final double? rightPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: leftPadding?.w ?? 35.w,
          right: rightPadding?.w ?? 25.w,
          top: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leading ?? backButton(context: context),
          horizontalSpace(width: 18.w),
          title ??
              Text(titleText ?? '',
                  style: AppTextStyles.robotoFont26DarkGray100ExtraBold1),
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

  Widget backButton({required BuildContext context}) {
    return GestureDetector(
      onTap: () {
        debugPrint('back');
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: SvgPicture.asset(
          "assets/svgs/back_icon.svg",
          height: 46.h,
          width: 46.w,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/constants/constants.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto(
      {super.key,
      required this.width,
      required this.height,
      required this.showOuterCircle,
      required this.showMenuButton});
  final double width;
  final double height;
  final bool showOuterCircle;
  final bool showMenuButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: showOuterCircle ? width.w + 10.w : null,
          height: showOuterCircle ? height.h + 10.h : null,
          decoration: showOuterCircle
              ? BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.darkGray, width: 2.w),
                )
              : null,
          child: Center(
            child: Container(
              width: width.w,
              height: height.h,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/store_feature/man.png'),
              ),
            ),
          ),
        ),
        Visibility(visible: showMenuButton, child: _menuButton()),
      ],
    );
  }

  Positioned _menuButton() => Positioned(
        right: 0.w,
        bottom: -3.h,
        child: Container(
          width: 31.w,
          height: 31.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.softGray,
          ),
          child: Center(
            child: Icon(
              Icons.menu_sharp,
              color: AppColor.darkGray.withOpacity(0.5),
            ),
          ),
        ),
      );
}

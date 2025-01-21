import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/constants/constants.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 90.w,
          height: 90.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColor.darkGray, width: 2.w),
          ),
          child: Center(
            child: Container(
              width: 80.w,
              height: 80.h,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/store_feature/man.png'),
              ),
            ),
          ),
        ),
        _menuButton(),
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

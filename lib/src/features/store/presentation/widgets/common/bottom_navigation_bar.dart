import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebuy/src/core/constants/constants.dart';

// todo check why on tap is not working
class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox.shrink(),
        Positioned(
          top: -74.h,
          right: 15.w,
          child: Container(
            height: 54.h,
            width: 385.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: AppColor.darkGray,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  bottomNavigationBarButton(
                      svg: 'assets/svgs/home.svg',
                      isSelected: selectedIndex == 0 ? true : false,
                      index: 0),
                  bottomNavigationBarButton(
                      svg: 'assets/svgs/heart.svg',
                      isSelected: selectedIndex == 1 ? true : false,
                      index: 1),
                  SizedBox(
                    width: 64.w,
                  ),
                  bottomNavigationBarButton(
                      svg: 'assets/svgs/compass.svg',
                      isSelected: selectedIndex == 3 ? true : false,
                      index: 3),
                  bottomNavigationBarButton(
                      svg: 'assets/svgs/message_square.svg',
                      isSelected: selectedIndex == 4 ? true : false,
                      index: 4),
                ],
              ),
            ),
          ),
        ),
        centerButton(),
      ],
    );
  }

  Widget bottomNavigationBarButton(
          {required String svg,
          required bool isSelected,
          required int index}) =>
      GestureDetector(
        onTap: () {
          setState(() {
            print(index);
            selectedIndex = index;
          });
        },
        child: Container(
          width: 66.w,
          height: 41.h,
          decoration: BoxDecoration(
            color: isSelected ? AppColor.deepTeal : Colors.transparent,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Center(
            child: SvgPicture.asset(
              svg,
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),
      );

  Widget centerButton() => Positioned.fromRect(
        rect: Rect.fromCenter(
            center: Offset(414.w / 2, -47.h), width: 64.w, height: 64.h),
        child: InkWell(
          borderRadius: BorderRadius.circular(50.r),
          onTap: () {
            debugPrint('Camera');
          },
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: AppColor.darkGray),
            child: Center(
              child: Container(
                width: 55.w,
                height: 55.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColor.lightestGray),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/svgs/camera.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

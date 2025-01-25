import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.0.w,
        bottom: 12.h,
      ),
      child: Material(
        color: AppColor.white,
        elevation: 5,
        borderRadius: BorderRadius.circular(12.r),
        child: Column(children: [
          Stack(
            children: [
              _itemImage(),
              _favoriteButton(),
            ],
          ),
          Container(
            height: 72.h,
            width: 269.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.r),
                  bottomRight: Radius.circular(12.r)),
              color: AppColor.white,
            ),
            child: _itemDetails(),
          ),
        ]),
      ),
    );
  }

  Widget _itemDetails() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Batman Toy',
                    style: AppTextStyles.robotoFont17DarkGray100Medium1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(height: 8),
                  Text(
                    '2018 | FunSkool',
                    style: AppTextStyles.robotoFont14DustyRose100Regular1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Text(
              '₹ 899',
              style: AppTextStyles.robotoFont26DarkGray100ExtraBold1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );

  Widget _itemImage() => ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r)),
        child: Image.asset(
          'assets/images/store_feature/batman.png',
          width: 269.w,
          height: 174.h,
          fit: BoxFit.cover,
        ),
      );
  Widget _favoriteButton() => Positioned(
        bottom: 10.h,
        right: 10.w,
        child: GestureDetector(
          onTap: () {
            debugPrint('Favorite');
          },
          child: Container(
            width: 31.w,
            height: 31.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.softGray.withOpacity(0.75),
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/svgs/heart.svg',
                colorFilter:
                    ColorFilter.mode(AppColor.vibrantRed, BlendMode.srcIn),
                width: 21.w,
                height: 18.h,
              ),
            ),
          ),
        ),
      );
}

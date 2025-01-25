import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';

class FavoriteItems extends StatelessWidget {
  const FavoriteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (itemBuilder, index) => _favoriteItem(),
        itemCount: 20,
      ),
    );
  }

  Widget _favoriteItem() => Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15.h),
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            decoration: BoxDecoration(
              color: AppColor.deepTeal.withOpacity(0.15),
              borderRadius: BorderRadius.circular(13.r),
            ),
            child: Row(
              children: [
                _itemImage(),
                _itemDetails(),
              ],
            ),
          ),
          _favoriteButton(),
        ],
      );

  Widget _itemImage() => ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Image.asset(
          'assets/images/store_feature/batman.png',
          width: 90.w,
          height: 90.h,
          fit: BoxFit.cover,
        ),
      );

  Widget _itemDetails() => Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Batman Toy',
                style: AppTextStyles.robotoFont19DarkGray70ExtraBold1,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(height: 8.h),
              Text(
                '21 jan 2021',
                style: AppTextStyles.robotoFont17DarkGray50Regular1,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(height: 8.h),
              Text(
                '₹ 8,999',
                style: AppTextStyles.robotoFont19DarkGray70ExtraBold1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      );
  Widget _favoriteButton() => Positioned(
        bottom: 25.h,
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
              color: AppColor.white.withOpacity(0.75),
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/svgs/heart_filled.svg',
                colorFilter:
                    ColorFilter.mode(AppColor.vibrantRed, BlendMode.srcIn),
                width: 23.w,
                height: 21.h,
              ),
            ),
          ),
        ),
      );
}

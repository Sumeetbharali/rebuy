import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';
import 'package:rebuy/src/features/store/presentation/widgets/common/user_photo.dart';

class ProductsPosts extends StatelessWidget {
  const ProductsPosts({super.key});
  final itemCount = 20;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // to  show the last item with some padding at the bottom
        itemBuilder: (itemBuilder, index) => index == itemCount - 1
            ? Padding(
                padding: EdgeInsets.only(bottom: 70.h),
                child: _productPost(),
              )
            : _productPost(),
        itemCount: itemCount,
      ),
    );
  }

  Widget _productPost() => Container(
        margin: EdgeInsets.only(bottom: 15.h),
        child: Column(children: [
          _postHeader(),
          _postImage(),
          _postDetails(),
        ]),
      );

  Widget _postHeader() => Container(
        color: AppColor.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Row(children: [
            const UserPhoto(
              width: 50,
              height: 50,
              showMenuButton: false,
              showOuterCircle: false,
            ),
            horizontalSpace(width: 5.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cliff Hanger',
                  style: AppTextStyles.robotoFont16Black100Regular1,
                ),
                verticalSpace(height: 5.h),
                Text(
                  'El Dorado',
                  style: AppTextStyles.robotoFont14DarkGray50Regular1,
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              iconSize: 22.h,
            ),
          ]),
        ),
      );

  Widget _postImage() => Stack(
        children: [
          Image.asset(
            'assets/images/store_feature/batman.png',
            width: 377.w,
            height: 298.h,
            fit: BoxFit.fill,
          ),
          _favoriteButton(),
        ],
      );

  Widget _postDetails() => Container(
        color: AppColor.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cordoba Mini Guitar',
                      style: AppTextStyles.robotoFont24Black100ExtraBold1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(height: 8),
                    Text(
                      'Make: Cordoba | Year: 2020',
                      style: AppTextStyles.robotoFont14DarkGray50Regular1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Text(
                '₹ 25,000',
                style: AppTextStyles.robotoFont24Black100ExtraBold1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
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
              color: AppColor.vibrantRed.withOpacity(0.25),
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

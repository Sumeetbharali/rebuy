import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (itemBuilder, index) => _chatItem(),
        itemCount: 20,
      ),
    );
  }

  Widget _chatItem() => Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15.h),
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(13.r),
            ),
            child: Row(
              children: [
                _chatImage(),
                _chatDetails(),
              ],
            ),
          ),
          _unreadMessages(),
          _chatTime(),
        ],
      );

  Widget _chatImage() => Container(
        width: 60.w,
        height: 60.h,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/store_feature/man.png'),
        ),
      );

  Widget _chatDetails() => Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Dji Mavic Mini 2 ',
                  style: AppTextStyles.robotoFont16Black100Medium1,
                  children: <TextSpan>[
                    TextSpan(
                      text: '| Petey Cruiser',
                      style: AppTextStyles.robotoFont16DarkGray50Medium1,
                    ),
                  ],
                ),
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(height: 10),
              Text(
                'Petey: Sorry I’m unlisting it',
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.robotoFont14DarkGray50Regular1,
              ),
            ],
          ),
        ),
      );

  Widget _chatTime() => Positioned(
        right: 10.w,
        bottom: 25.h,
        child: Text(
          '12:00 PM',
          style: AppTextStyles.robotoFont14DarkGray50Regular1,
        ),
      );

  Widget _unreadMessages() => Positioned(
        right: 10.w,
        top: 25.h,
        child: Container(
          width: 23.w,
          height: 23.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.vibrantRed,
          ),
          child: Center(
            child: Text(
              '2',
              style: AppTextStyles.robotoFont14White100Medium1,
            ),
          ),
        ),
      );
}

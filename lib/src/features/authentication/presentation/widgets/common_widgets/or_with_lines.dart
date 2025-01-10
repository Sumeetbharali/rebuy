import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';

class OrWithLines extends StatelessWidget {
  const OrWithLines({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 15.h,
        width: 324.w,
        child: Row(children: [
          Expanded(
            child: Divider(
              thickness: 0.55.h,
              color: AppColor.darkGray,
            ),
          ),
          horizontalSpace(width: 5),
          Text('Or', style: AppTextStyles.robotoFont14DarkGray50Regular1),
          horizontalSpace(width: 5),
          Expanded(
            child: Divider(
              thickness: 0.55.h,
              color: AppColor.darkGray,
            ),
          ),
        ]),
      ),
    );
  }
}

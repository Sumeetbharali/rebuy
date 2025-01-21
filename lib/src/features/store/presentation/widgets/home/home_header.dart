import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key, required this.header});
  final String header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 27.w),
      child: Row(
        children: [
          Text(
            header,
            style: AppTextStyles.robotoFont26DarkGray100ExtraBold1,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              debugPrint('View more');
            },
            child: Text(
              'View more',
              style: AppTextStyles.robotoFont15GraphiteGray100SemiBold1,
            ),
          ),
          horizontalSpace(width: 27.w),
        ],
      ),
    );
  }
}

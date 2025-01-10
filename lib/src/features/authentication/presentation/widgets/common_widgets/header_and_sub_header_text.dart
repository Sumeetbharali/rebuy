import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';

class HeaderAndSubHeaderText extends StatelessWidget {
  const HeaderAndSubHeaderText(
      {super.key, required this.header, required this.subHeader});
  final String header;
  final String subHeader;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          header,
          style: AppTextStyles.dosisFont50DarkGray100ExtraBold1,
        ),
        verticalSpace(height: 33),
        Text(
          subHeader,
          style: AppTextStyles.robotoFont14DarkGray50Regular1,
        ),
      ]),
    );
  }
}

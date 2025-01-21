import 'package:flutter/material.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hey Alice',
          style: AppTextStyles.robotoFont32DarkGray100ExtraBold1,
        ),
        verticalSpace(height: 7),
        Text(
          'Welcome back!',
          style: AppTextStyles.robotoFont24VibrantRed100Regular1,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';
import 'package:rebuy/src/core/widgets/app_text_field.dart';

class NameEmailAndPassword extends StatelessWidget {
  const NameEmailAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 35.w, left: 35.w),
      child: Column(
        children: [
          AppTextField(
            hintText: 'Name',
            controller: TextEditingController(),
          ),
          verticalSpace(height: 20),
          AppTextField(
            hintText: 'Email',
            controller: TextEditingController(),
          ),
          verticalSpace(height: 20),
          AppTextField(
            hintText: 'Password',
            controller: TextEditingController(),
            obscureText: true,
          ),
        ],
      ),
    );
  }
}

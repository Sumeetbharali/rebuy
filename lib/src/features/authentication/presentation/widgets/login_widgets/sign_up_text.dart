import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rebuy/src/core/constants/constants.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
          text: TextSpan(
              text: 'Don’t have an account?',
              style: AppTextStyles.robotoFont18DarkGray50Regular1,
              children: [
            TextSpan(
                text: ' Sign up',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Navigator.pushNamed(context, '/signup');
                  },
                style: AppTextStyles.robotoFont18VibrantRed100Medium1)
          ])),
    );
  }
}

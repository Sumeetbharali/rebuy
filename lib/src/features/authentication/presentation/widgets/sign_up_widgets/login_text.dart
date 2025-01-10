import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rebuy/src/core/constants/constants.dart';
import 'package:rebuy/src/core/routes/routes.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: 'Already have an account?',
          style: AppTextStyles.robotoFont18DarkGray50Regular1,
          children: [
            TextSpan(
                text: ' Log in',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushReplacementNamed(context, RoutesNames.login);
                  },
                style: AppTextStyles.robotoFont18VibrantRed100Medium1)
          ],
        ),
      ),
    );
  }
}

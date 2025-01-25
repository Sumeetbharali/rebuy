import 'package:flutter/material.dart';
import 'package:rebuy/src/core/helpers/spacing.dart';
import 'package:rebuy/src/core/routes/names.dart';
import 'package:rebuy/src/core/widgets/re_buy_app_bar.dart';
import 'package:rebuy/src/features/authentication/presentation/widgets/common_widgets/authentication_button.dart';
import 'package:rebuy/src/features/authentication/presentation/widgets/common_widgets/header_and_sub_header_text.dart';
import 'package:rebuy/src/features/authentication/presentation/widgets/common_widgets/or_with_lines.dart';
import 'package:rebuy/src/features/authentication/presentation/widgets/common_widgets/social_buttons.dart';
import 'package:rebuy/src/features/authentication/presentation/widgets/login_widgets/email_and_password_fields.dart';
import 'package:rebuy/src/features/authentication/presentation/widgets/login_widgets/sign_up_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReBuyAppBar(),
              verticalSpace(height: 68),
              const HeaderAndSubHeaderText(
                header: 'Log in',
                subHeader: 'Login with one of the following options',
              ),
              verticalSpace(height: 20),
              const SocialButtons(),
              verticalSpace(height: 40),
              const OrWithLines(),
              verticalSpace(height: 40),
              const EmailAndPasswordFields(),
              verticalSpace(height: 20),
              AuthenticationButton(
                text: 'Log in',
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.store);
                },
              ),
              verticalSpace(height: 35),
              const SignUpText(),
              verticalSpace(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

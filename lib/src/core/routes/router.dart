library route_pages;

import 'package:flutter/material.dart';
import 'package:rebuy/src/features/authentication/presentation/pages/login_page.dart';
import 'package:rebuy/src/features/authentication/presentation/pages/sign_up_page.dart';
import '/src/core/error/error.dart';
import 'routes.dart';

class AppRoute {
  static const initial = RoutesNames.initial;
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesNames.initial:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case RoutesNames.login:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case RoutesNames.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpPage(),
        );
      default:
        // If there is no such named route in the switch statement
        throw const RouteException('Route not found!');
    }
  }
}

library route_pages;

import 'package:flutter/material.dart';
import 'package:rebuy/src/features/authentication/presentation/pages/login_page.dart';
import 'package:rebuy/src/features/authentication/presentation/pages/sign_up_page.dart';
import 'package:rebuy/src/features/store/presentation/pages/store.dart';
import '/src/core/error/error.dart';
import 'routes.dart';

//+9660874430
class AppRoute {
  static const initial = RouteNames.initial;
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RouteNames.initial:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case RouteNames.login:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case RouteNames.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpPage(),
        );
      case RouteNames.store:
        return MaterialPageRoute(
          builder: (_) => const StorePage(),
        );
      default:
        // If there is no such named route in the switch statement
        throw const RouteException('Route not found!');
    }
  }
}

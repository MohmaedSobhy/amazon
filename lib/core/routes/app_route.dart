import 'package:amazon/Feature/Auth/screens/authincation_screen.dart';
import 'package:amazon/core/routes/routes_name.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route? generateRouet(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.login:
        return MaterialPageRoute(
          builder: (_) {
            return const LoginScreen();
          },
        );
    }
    return null;
  }
}

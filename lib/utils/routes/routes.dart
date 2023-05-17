import 'package:flutter/material.dart';
import 'package:mvvm/view/home_screen.dart';
import 'package:mvvm/view/login_view.dart';
import 'package:mvvm/view/signup_view.dart';
import 'package:mvvm/view/splash_view.dart';
import 'package:mvvm/view/intro.dart';
import 'routes_name.dart';

/// Created by Sawan Kumar on 12/05/23.


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
       case RoutesName.intor:
      return MaterialPageRoute(
            builder: (BuildContext context) => const Intro());
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      case RoutesName.signUp:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpView());
      default:
        return MaterialPageRoute(
            builder: (BuildContext constext) => const Scaffold(
                  body: Center(
                    child: Text('No Route found'),
                  ),
                ));
    }
  }
}

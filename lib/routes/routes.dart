import 'package:flutter/material.dart';
import 'package:mvvm/view/splash_view.dart';

import '../res/components/videoPlayer.dart';
import '../utils/routes/routes_name.dart';
import '../view/home_screen.dart';
import '../view/intro.dart';
import '../view/login_view.dart';
import '../view/signup_view.dart';

/// Created by Sawan Kumar on 12/05/23.

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.videoPlayer:
        return MaterialPageRoute(
            builder: (BuildContext context) => const VideoPlayer());
      case RoutesName.intor:
        return MaterialPageRoute(builder: (BuildContext context) => Intro());
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
                    child: Text('No Route found  dd'),
                  ),
                ));
    }
  }
}

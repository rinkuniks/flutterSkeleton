import 'package:flutter/material.dart';
import 'package:mvvm/view/preAuth/splash_view.dart';

import '../res/components/videoPlayer.dart';
import '../utils/routes/routes_name.dart';
import '../view/auth/login_view.dart';
import '../view/auth/signup_view.dart';
import '../view/bottomTab/bottomNavigations.dart';
import '../view/bottomTab/homeScreen.dart';
import '../view/bottomTab/messageSereen.dart';
import '../view/bottomTab/myCoursesScreen.dart';
import '../view/bottomTab/notificationScreen.dart';
import '../view/bottomTab/profileScreen.dart';
import '../view/dashboard/home_screen.dart';
import '../view/preAuth/intro.dart';

/// Created by Sawan Kumar on 12/05/23.

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeMain:
        return MaterialPageRoute(builder: (BuildContext context) => Home());
      case RoutesName.my_courses:
        return MaterialPageRoute(builder: (BuildContext context) => MyCourse());
      case RoutesName.message:
        return MaterialPageRoute(
            builder: (BuildContext context) => MessageSereen());
      case RoutesName.notifications:
        return MaterialPageRoute(
            builder: (BuildContext context) => NotificationScreen());
      case RoutesName.profile:
        return MaterialPageRoute(builder: (BuildContext context) => Profile());
      case RoutesName.BottomNavi:
        return MaterialPageRoute(
            builder: (BuildContext context) => BottomNavi());
      case RoutesName.videoPlayer:
        return MaterialPageRoute(
            builder: (BuildContext context) => const VideoPlayer());
      case RoutesName.intor:
        return MaterialPageRoute(builder: (BuildContext context) => const Intro());
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

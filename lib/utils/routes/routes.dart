import 'package:ExcelR/view/auth/onBoarding.dart';
import 'package:flutter/material.dart';

import '../../res/components/videoPlayer.dart';
import 'routes_name.dart';
import '../../view/auth/login_view.dart';
import '../../view/auth/signup_view.dart';
import '../../view/bottomTab/bottomNavigations.dart';
import '../../view/bottomTab/homeScreen.dart';
import '../../view/bottomTab/messageSereen.dart';
import '../../view/bottomTab/myCoursesScreen.dart';
import '../../view/bottomTab/notificationScreen.dart';
import '../../view/bottomTab/profileScreen.dart';
import '../../view/preAuth/intro.dart';
import '../../view/preAuth/splash_view.dart';

/// Created by Sawan Kumar on 12/05/23.

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {

      //PreAuth
      case RoutesName.intro:
        return MaterialPageRoute(builder: (BuildContext context) => const Intro());
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());

      //Auth
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      case RoutesName.signUp:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpView());
      case RoutesName.onBoarding:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnBoarding());

      //Dashboard
      case RoutesName.homeMain:
        return MaterialPageRoute(builder: (BuildContext context) => const Home());
      case RoutesName.myCourses:
        return MaterialPageRoute(builder: (BuildContext context) => const MyCourse());
      case RoutesName.message:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MessageScreen());
      case RoutesName.notifications:
        return MaterialPageRoute(
            builder: (BuildContext context) => const NotificationScreen());
      case RoutesName.profile:
        return MaterialPageRoute(builder: (BuildContext context) => const Profile());
      case RoutesName.bottomNavigation:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BottomNavigation());
      case RoutesName.videoPlayer:
        return MaterialPageRoute(
            builder: (BuildContext context) => const VideoPlayer());

    //Default Route
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Scaffold(
                  body: Center(
                    child: Text('No Route found...'),
                  ),
                ));
    }
  }
}

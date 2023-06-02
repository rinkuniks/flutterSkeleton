// ignore_for_file: use_build_context_synchronously

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../model/user_model.dart';
import '../../utils/routes/routes_name.dart';
import '../user_view_model.dart';

/// Created by Sawan Kumar on 12/05/23.

class SplashServices {
  Future<UserModel> getUserdata() => UserViewModel().getuser();
  void checkAuthentication(context) async {
    getUserdata().then((value) async {
      print(value.token);
      if (value.token.toString() == null || value.token.toString() == '') {
        await Future.delayed(const Duration(seconds: 3));
        print("1111-----------------------------");
        Navigator.pushNamed(context, RoutesName.intro);
         //       Navigator.pushNamed(context, RoutesName.home);

      } else {
        await Future.delayed(const Duration(seconds: 3));
 print("1111-----------------------------2222");
//  Navigator.pushNamed(context, RoutesName.home);
        Navigator.pushNamed(context, RoutesName.intro);
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:mvvm/res/color.dart';
import 'package:mvvm/view_model/services/splash_services.dart';

/// Created by Sawan Kumar on 12/05/23.

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.checkAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Text(
        'ExcelR',
        style: TextStyle(fontSize: 42, color: AppColors.blueText),
      )),
    );
  }
}

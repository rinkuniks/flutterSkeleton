import 'package:flutter/material.dart';

import '../../base/base_page.dart';
import '../../res/color.dart';
import '../../view_model/services/splash_services.dart';

/// Created by Sawan Kumar on 12/05/23.

class SplashView extends BasePage {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends BasePageState<SplashView> with Base{
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.checkAuthentication(context);
  }

  @override
  bool isAppBarNeeded() {
    // TODO: implement isAppBarNeeded
    return false;
  }

  @override
  Widget body() {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Text(
            'ExcelR',
            style: AppColors.primaryTextStyleTitle,
          )),
    );
  }
}

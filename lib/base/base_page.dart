import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../generated/assets.dart';
import '../res/appColors.dart';
import '../utils/utils.dart';
import 'loading.dart';

/// Created by Sawan Kumar on 18/05/23.


abstract class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);
}

abstract class BasePageState<T extends BasePage> extends State<T> {
  bool shouldPop = true;


  String topBarTitle() {
    return "";
  }

  /// Handled back click
  void onClickBack() {
    if (shouldPop) Navigator.of(context).pop();
  }

  String leftIcon (){
    return Assets.assetsTopbarBack;
  }

  bool isAppBarNeeded(){
    return true;
  }

}

mixin Base<P extends BasePage> on BasePageState<P> {
  late bool loading;
  var subscription;
  bool netNotAvailable = false;

  @override
  void initState() {
    super.initState();
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarIconBrightness: Brightness.light
    //   //color set to transperent or set your own color
    // ));
    loading = false;
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      Utils.logInDebug("ConnectivityResult $result");
      setState(() {
        netNotAvailable =
        result.toString() == 'ConnectivityResult.none' ? true : false;
      });
    });
  }


  void setLoader(bool showLoader) {
    setState(() {
      loading = showLoader;
    });
  }

  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }



  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return WillPopScope(
        onWillPop: () async {
          return shouldPop;
        },
        child: Scaffold(
            appBar: isAppBarNeeded() ?AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              // leading: SvgPicture.asset(Assets.assetsTopbarBack,height: 10, width: 10,),
              iconTheme: const IconThemeData(
                  color: MyColors.backIcon,

              ),
              leading: Transform.scale(
                  scale: 1.5,
                  child: InkWell(onTap:(){
                  },child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                    child: SvgPicture.asset(leftIcon()),
                  )),
              ),

              title:  Text(topBarTitle(), style: const TextStyle(
                  color: MyColors.black
              )),
              /*actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.call),
                ),
              ],*/
              backgroundColor: MyColors.white,

            ) : null,
            body: SafeArea(
              child: Stack(
                children: [body(), if (loading) Loading()],
              ),
            )));
  }

  Widget body();

}

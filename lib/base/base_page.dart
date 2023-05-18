import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/base/loading.dart';
import 'package:mvvm/utils/utils.dart';

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
            body: SafeArea(
              child: Stack(
                children: [body(), if (loading) Loading()],
              ),
            )));
  }

  Widget body();

}

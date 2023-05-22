import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SharedPref.dart';

class LocalLang extends ChangeNotifier {
  Locale _locale = Locale(Platform.localeName  == "en_US" ? "en" : "hi");
  Locale get local => _locale;


  // setDarkTheme(bool value) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setBool(THEME_STATUS, value);
  // }


  setLocal(String langCode) async {
   
    await SharedPref().saveUser(['langCode'], [langCode]);
    _locale = Locale(langCode);

    notifyListeners();
  }

  getLocal() async {
    String code = await SharedPref().getUser("langCode");
    _locale = Locale(code);
    notifyListeners();
  }
}
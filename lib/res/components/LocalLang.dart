import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SharedPref.dart';

class LocalLang extends ChangeNotifier {
  Locale _locale = Locale(Platform.localeName == "en_US" ? "en" : "hi");
  Locale get local => _locale;
  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  // setDarkTheme(bool value) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setBool(THEME_STATUS, value);
  // }

  setThemeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }

  setLocal(
    String langCode,
  ) async {
    print(langCode + "first");

    await SharedPref().saveUser(['langCode'], [langCode]);

    _locale = Locale(langCode);
    print(_locale.languageCode + "second");
    notifyListeners();
  }

  getLocal() async {
    String code = await SharedPref().getUser("langCode");
    _locale = Locale(code);

    notifyListeners();
  }
}

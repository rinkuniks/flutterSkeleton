import 'package:flutter/material.dart';

import '../base/theme/DarkThemePreference.dart';

/// Created by Sawan Kumar on 12/05/23.

class MyColors {
  DarkThemePreference darkThemePreference = DarkThemePreference();

  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffFFFFFF);
  static const Color grey = Colors.grey;
  static const Color green = Colors.green;
  static const Color blueText = Color(0xFF3433F2);
  static const Color activeDot = Color(0XFF3433F2);
  static const Color deActiveDot = Color(0XFFC4C4C4);
  static const Color logInText = Color(0XFF8A8A8A);
  static const Color grayLine = Color(0xFFECECEE);
  static const Color backIcon = Color(0xFFA0A0A0);

  static TextStyle customTextStyle(Color color, double size) {
    return _textStyle(color, size);
  }

  static TextStyle _textStyle(
      Color color, double size) {
    return TextStyle(
        color: color,
        fontSize: size);
  }

  static TextStyle customTextStyleBold(Color color, double size, FontWeight fontWeight) {
    return _textStyleBold(color, size, FontWeight.w500);
  }

  static TextStyle _textStyleBold(
      Color color, double size, FontWeight fontWeight) {
    return TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight);
  }

  static const TextStyle messageRecipientTextStyle = TextStyle(
      color: MyColors.black, fontSize: 16.0, fontWeight: FontWeight.bold);

  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      //* Custom Google Font
      //  fontFamily: Devfest.google_sans_family,
      primarySwatch: Colors.blue,
      primaryColor: MyColors.blueText,

      backgroundColor: isDarkTheme ? Colors.black : Color(0xffF1F5FB),

      indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
      // buttonColor: isDarkTheme ? Color(0xff3B3B3B) : Color(0xffF1F5FB),

      hintColor: isDarkTheme ? Color(0xff280C0B) : Color(0xffEECED3),

      highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),

      focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      // textSelectionColor: isDarkTheme ? Colors.white : Colors.black,
      cardColor: isDarkTheme ? Colors.red : Colors.black,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
    );
  }
}

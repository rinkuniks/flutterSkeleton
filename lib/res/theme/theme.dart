import 'package:flutter/material.dart';
import 'text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: CustomTextTheme.lightTextTheme,);

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: CustomTextTheme.darkTextTheme,);
}

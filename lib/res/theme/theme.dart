import 'package:ExcelR/res/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: CustomTextTheme.lightTextTheme,);

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: CustomTextTheme.darkTextTheme,);
}

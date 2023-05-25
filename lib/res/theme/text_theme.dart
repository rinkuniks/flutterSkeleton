import 'package:flutter/material.dart';
import '../color.dart';

class CustomTextTheme {
  static TextTheme lightTextTheme = const TextTheme(
    //black color
    titleSmall:  TextStyle(
        color: AppColors.black,
        fontSize: 14,
        fontFamily: 'SF-Pro-Display'),
    titleMedium:  TextStyle(
        color: AppColors.black,
        fontSize: 16,
        fontFamily: 'SF-Pro-Display'),
    titleLarge:  TextStyle(
        color: AppColors.black,
        fontSize: 20,
        fontFamily: 'SF-Pro-Display'),
    //Blue Color
    displaySmall:  TextStyle(
        color: AppColors.blueText,
        fontSize: 14,
        fontFamily: 'SF-Pro-Display'),
    displayMedium:  TextStyle(
        color: AppColors.blueText,
        fontSize: 16,
        fontFamily: 'SF-Pro-Display'),
    displayLarge:  TextStyle(
        color: AppColors.blueText,
        fontSize: 40,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500),
    //grey Color
    labelSmall: TextStyle(
        color: AppColors.grey,
        fontSize: 14,
        fontFamily: 'SF-Pro-Display'),
    labelMedium:  TextStyle(
        color: AppColors.grey,
        fontSize: 16,
        fontFamily: 'SF-Pro-Display'),
    labelLarge:  TextStyle(
        color: AppColors.grey,
        fontSize: 20,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500),

  );

  static TextTheme darkTextTheme = const TextTheme(
    titleSmall:  TextStyle(
        color: AppColors.white,
        fontSize: 14,
        fontFamily: 'SF-Pro-Display'),
    titleMedium:  TextStyle(
        color: AppColors.white,
        fontSize: 16,
        fontFamily: 'SF-Pro-Display'),
    titleLarge:  TextStyle(
        color: AppColors.white,
        fontSize: 20,
        fontFamily: 'SF-Pro-Display'),
    displaySmall:  TextStyle(
        color: AppColors.white,
        fontSize: 14,
        fontFamily: 'SF-Pro-Display'),
    displayMedium:  TextStyle(
        color: AppColors.white,
        fontSize: 16,
        fontFamily: 'SF-Pro-Display'),
    displayLarge:  TextStyle(
        color: AppColors.white,
        fontSize: 40,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500),
    //grey Color
    labelSmall: TextStyle(
        color: AppColors.black,
        fontSize: 14,
        fontFamily: 'SF-Pro-Display'),
    labelMedium:  TextStyle(
        color: AppColors.black,
        fontSize: 16,
        fontFamily: 'SF-Pro-Display'),
    labelLarge:  TextStyle(
        color: AppColors.black,
        fontSize: 20,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500),
  );
}

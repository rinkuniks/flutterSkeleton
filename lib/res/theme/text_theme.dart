import 'package:flutter/material.dart';
import '../color.dart';

class CustomTextTheme {
  static TextTheme lightTextTheme = const TextTheme(
    //black color
    titleSmall:  TextStyle(
        color: AppColors.secondaryTextColor,
        fontSize: 14,
        //fontFamily: 'SF-Pro-Display'
        ),
    titleMedium:  TextStyle(
        color: AppColors.secondaryTextColor,
        fontSize: 14,
        //fontFamily: 'SF-Pro-Display'
        
        fontWeight: FontWeight.w500,
        ),
    titleLarge:  TextStyle(
        color: AppColors.secondaryTextColor,
        fontSize: 28,
        fontWeight: FontWeight.w500,
        //fontFamily: 'SF-Pro-Display'
        ),
    //Blue Color
    displaySmall:  TextStyle(
        color: AppColors.primaryTextColor,
        fontSize: 14,
        //fontFamily: 'SF-Pro-Display'
        ),
    displayMedium:  TextStyle(
        color: AppColors.primaryTextColor,
        fontSize: 16,
        //fontFamily: 'SF-Pro-Display'
        ),
    displayLarge:  TextStyle(
        color: AppColors.primaryTextColor,
        fontSize: 28,
        //fontFamily: 'SF-Pro-Display'
        
        fontWeight: FontWeight.w500),


        
    //grey Color
    labelSmall: TextStyle(
        color: AppColors.tertiaryTextColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
       //// fontFamily: 'SF-Pro-Display'

        ),
    labelMedium:  TextStyle(
        color: AppColors.tertiaryTextColor,
          fontWeight: FontWeight.w400,
        fontSize: 16,
        //fontFamily: 'SF-Pro-Display'
        ),
    labelLarge:  TextStyle(
        color: AppColors.tertiaryTextColor,
        fontSize: 20,
        //fontFamily: 'SF-Pro-Display'
        
        fontWeight: FontWeight.w500),

  );

  static TextTheme darkTextTheme = const TextTheme(
    titleSmall:  TextStyle(
        color: AppColors.white,
        fontSize: 14,
        //fontFamily: 'SF-Pro-Display'
        ),
    titleMedium:  TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        //fontFamily: 'SF-Pro-Display'
        ),
    titleLarge:  TextStyle(
        color: AppColors.white,
          fontSize: 28,
        fontWeight: FontWeight.w500,
        
        //fontFamily: 'SF-Pro-Display'
        ),
    displaySmall:  TextStyle(
        color: AppColors.white,
        fontSize: 14,
        //fontFamily: 'SF-Pro-Display'
        ),
    displayMedium:  TextStyle(
        color: AppColors.white,
        fontSize: 16,
        //fontFamily: 'SF-Pro-Display'
        ),
    displayLarge:  TextStyle(
        color: AppColors.white,
        fontSize: 28,
        //fontFamily: 'SF-Pro-Display'
        
        fontWeight: FontWeight.w500),
    //grey Color
    labelSmall: TextStyle(
        color: AppColors.secondaryTextColor,
          fontWeight: FontWeight.w400,
        fontSize: 12,
       //// fontFamily: 'SF-Pro-Display'

        ),
    labelMedium:  TextStyle(
        color: AppColors.secondaryTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        //fontFamily: 'SF-Pro-Display'
        ),
    labelLarge:  TextStyle(
        color: AppColors.secondaryTextColor,
        fontSize: 20,
        //fontFamily: 'SF-Pro-Display'
        
        fontWeight: FontWeight.w500),
  );
}

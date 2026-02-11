import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class Themes {
  static ThemeData get light => ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.accentGrey,
      filled: true,
      hintStyle: TextStyles.small.copyWith(color: AppColors.greyColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: AppColors.backgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.blackColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.blackColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.backgroundColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.greyColor,

      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: TextStyles.caption.copyWith(
        fontWeight: FontWeight.w500,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      surfaceTintColor: Colors.transparent,
    ),
  );
}

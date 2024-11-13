// lib/theme/app_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: AppColors.mainColor),
        labelStyle: TextStyle(color: AppColors.mainColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: AppColors.mainColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: AppColors.mainColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: AppColors.mainColor),
        ),
      ),
      scaffoldBackgroundColor: AppColors.mainWhite,
      primaryColor: AppColors.mainColorWhite,
      primaryColorLight: AppColors.mainColor,
      primaryColorDark: AppColors.mainWhite,
      textTheme: GoogleFonts.kanitTextTheme().apply(
          bodyColor: AppColors.mainColor,
          displayColor: AppColors.mainWhite,
          decorationColor: AppColors.mainColor),
      shadowColor: Colors.grey.withOpacity(0.2),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.mainWhite,
        iconTheme: IconThemeData(
          color: AppColors.mainColor,
        ),
        elevation: 2.0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.mainWhite,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.mainColor,
      ),
      tabBarTheme: TabBarTheme(
          labelColor: AppColors.mainColor,
          unselectedLabelColor: AppColors.mainWhite,
          indicatorColor: AppColors.mainColorWhite),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.mainColorWhite,
    scaffoldBackgroundColor: AppColors.mainWhite,
    primaryColorLight: AppColors.mainColor,
    primaryColorDark: AppColors.mainWhite,
    iconTheme: const IconThemeData(color: Color.fromARGB(255, 50, 161, 252)),
    textTheme: GoogleFonts.kanitTextTheme().apply(
          bodyColor: AppColors.mainColor,
          displayColor: AppColors.mainWhite,
          decorationColor: AppColors.mainColor,),
    
    appBarTheme: AppBarTheme(
        backgroundColor: AppColors.mainWhite,
        iconTheme: IconThemeData(
          color: AppColors.mainColor,
        ),
        elevation: 2.0,
      ),
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

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey[900],
    cardColor: Colors.grey[800],
    iconTheme: const IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
    textTheme: GoogleFonts.jostTextTheme(
      ThemeData.dark().textTheme.copyWith(
          bodyLarge: GoogleFonts.jost(
            color: const Color.fromARGB(255, 236, 236, 236),
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: GoogleFonts.jost(
            color: const Color.fromARGB(255, 236, 236, 236),
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
          bodySmall: GoogleFonts.jost(
              color: const Color.fromARGB(221, 0, 153, 255),
              fontSize: 16.0,
              fontWeight: FontWeight.normal)),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(33, 33, 33, 1),
      foregroundColor: Color.fromRGBO(255, 255, 255, 1),
    ),
  );
}


// const TextTheme(
//         bodyLarge: TextStyle(color: Color.fromRGBO(42, 43, 42, 1)),
//         bodyMedium: TextStyle(color: Color.fromRGBO(42, 43, 42, 1)),
//         bodySmall: TextStyle(color: Colors.blue)),

import 'package:flutter/material.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.mainColor,
      cardColor: AppColors.whiteColor,
      canvasColor: AppColors.mainColorWhite,
      disabledColor: AppColors.grey,
      dividerColor: AppColors.grey100,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.mainColorWhite,
      ));

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}

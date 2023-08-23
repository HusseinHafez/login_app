import 'package:flutter/material.dart';
import 'package:flutter_login_app/config/theme/app_theme_widgets/app_text_theme.dart';
import 'package:flutter_login_app/config/theme/app_theme_widgets/elevated_button_theme.dart';
import 'package:flutter_login_app/config/theme/app_theme_widgets/outlined_button_theme.dart';

class AppTheme{
AppTheme._();

  static ThemeData lightTheme=ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    outlinedButtonTheme: AppOutlinedButtonThemeData.lightOutlinedButtonThemeData,
    elevatedButtonTheme: AppElevatedButtonThemeData.lightElevatedButtonThemeData
  );
  static ThemeData darkTheme=ThemeData(
     brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    outlinedButtonTheme: AppOutlinedButtonThemeData.darkOutlinedButtonThemeData,
    elevatedButtonTheme: AppElevatedButtonThemeData.darkElevatedButtonThemeData,
  );
}
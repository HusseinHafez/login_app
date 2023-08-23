import 'package:flutter/material.dart';
import 'package:flutter_login_app/core/utils/app_colors.dart';

class AppOutlinedButtonThemeData{

  static OutlinedButtonThemeData lightOutlinedButtonThemeData = OutlinedButtonThemeData(

    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: AppColors.sencodaryColor,
      side: const BorderSide(color: AppColors.sencodaryColor),
      
    )
  );


  static OutlinedButtonThemeData darkOutlinedButtonThemeData = OutlinedButtonThemeData(

    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: AppColors.whiteColor,
      side: const BorderSide(color: AppColors.whiteColor),
      
    )
  );
}
import 'package:flutter/material.dart';
import 'package:flutter_login_app/core/utils/app_colors.dart';

class AppElevatedButtonThemeData{

  static ElevatedButtonThemeData lightElevatedButtonThemeData = ElevatedButtonThemeData(

    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: AppColors.whiteColor,
      backgroundColor: AppColors.sencodaryColor,
      elevation: 0,
      
      side: const BorderSide(color: AppColors.sencodaryColor),
      
    )
  );


  static ElevatedButtonThemeData darkElevatedButtonThemeData = ElevatedButtonThemeData(

    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: AppColors.blackColor,
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      
     
      side: const BorderSide(color: AppColors.whiteColor),
      
    )
  );
}
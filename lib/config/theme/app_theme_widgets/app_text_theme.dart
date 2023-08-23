import 'package:flutter/material.dart';
import 'package:flutter_login_app/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge:GoogleFonts.montserrat(
      color: AppColors.blackColor,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: GoogleFonts.montserrat(
      color: AppColors.blackColor,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
     displaySmall: GoogleFonts.poppins(
      color:AppColors.blackColor,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: GoogleFonts.poppins(
      color:AppColors.blackColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: GoogleFonts.poppins(
      color:AppColors.blackColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: GoogleFonts.poppins(
      color:AppColors.blackColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: GoogleFonts.poppins(
      color:AppColors.blackColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    titleMedium: GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
   
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge:GoogleFonts.montserrat(
      color: AppColors.whiteColor,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: GoogleFonts.montserrat(
      color: AppColors.whiteColor,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
     displaySmall: GoogleFonts.poppins(
      color:AppColors.whiteColor,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: GoogleFonts.poppins(
      color:AppColors.whiteColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: GoogleFonts.poppins(
      color:AppColors.whiteColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: GoogleFonts.poppins(
      color:AppColors.whiteColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: GoogleFonts.poppins(
      color:AppColors.whiteColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    titleMedium: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
  );
}

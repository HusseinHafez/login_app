import 'package:flutter/material.dart';

class AppConstants{
  AppConstants._();
  static GlobalKey<NavigatorState> navigatorKey=GlobalKey();
   static bool isDarkMode = MediaQuery.of(AppConstants.navigatorKey.currentContext!)
          .platformBrightness ==
      Brightness.dark;
  static  TextStyle headline1 =Theme.of(navigatorKey.currentContext!).textTheme.displayLarge!;
  static  TextStyle headline2 =Theme.of(navigatorKey.currentContext!).textTheme.displayMedium!;
  static  TextStyle headline3 =Theme.of(navigatorKey.currentContext!).textTheme.displaySmall!;
  static  TextStyle headline4 =Theme.of(navigatorKey.currentContext!).textTheme.headlineMedium!;
  static  TextStyle headline6 =Theme.of(navigatorKey.currentContext!).textTheme.titleLarge!;
  static  TextStyle bodyText1 =Theme.of(navigatorKey.currentContext!).textTheme.bodyLarge!;
  static  TextStyle bodyText2 =Theme.of(navigatorKey.currentContext!).textTheme.bodyMedium!;
  static  TextStyle subTitle2 =Theme.of(navigatorKey.currentContext!).textTheme.titleMedium!;
  static  TextStyle subTitle3 =Theme.of(navigatorKey.currentContext!).textTheme.titleSmall!;
  static ButtonStyle outlinedButtonStyle=Theme.of(navigatorKey.currentContext!).outlinedButtonTheme.style!;
  static ButtonStyle elevatedButtonStyle=Theme.of(navigatorKey.currentContext!).elevatedButtonTheme.style!;
  static double screenHeight=MediaQuery.of(navigatorKey.currentContext!).size.height;
  static double screenWidth=MediaQuery.of(navigatorKey.currentContext!).size.width;
}
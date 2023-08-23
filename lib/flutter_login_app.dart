import 'package:flutter/material.dart';
import 'package:flutter_login_app/config/theme/app_theme.dart';
import 'package:flutter_login_app/core/utils/app_constants.dart';
import 'package:flutter_login_app/modules/on_boarding/view/on_boarding_screen.dart';
import 'package:flutter_login_app/modules/splash/view/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class FlutterLoginApp extends StatelessWidget {
  const FlutterLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: AppConstants.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}

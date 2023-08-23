import 'package:flutter_login_app/modules/home/view/home_screen.dart';
import 'package:flutter_login_app/modules/on_boarding/view/on_boarding_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  static SplashController get find =>Get.find();
  RxBool animate=false.obs;
  Future startAnimation()async{
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value=true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to( OnBoardingScreen());
  }
}
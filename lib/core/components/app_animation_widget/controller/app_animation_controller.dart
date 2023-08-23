import 'package:get/get.dart';

import '../../../../modules/on_boarding/view/on_boarding_screen.dart';

class AppAnimationController extends GetxController{
  static AppAnimationController get find => Get.find();
   RxBool animate=false.obs;
  Future startAnimation()async{
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value=true;
   
}
 Future startSplashAnimation()async{
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value=true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value=false;
    await Future.delayed(const Duration(milliseconds: 2000));

    Get.to( OnBoardingScreen());
}
}
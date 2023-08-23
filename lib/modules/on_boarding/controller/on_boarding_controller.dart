import 'package:flutter_login_app/core/utils/app_colors.dart';
import 'package:flutter_login_app/core/utils/app_constants.dart';
import 'package:flutter_login_app/core/utils/app_images.dart';
import 'package:flutter_login_app/core/utils/app_strings.dart';
import 'package:flutter_login_app/modules/on_boarding/model/on_boarding_model.dart';
import 'package:flutter_login_app/modules/on_boarding/view/widgets/on_boarding_widget.dart';
import 'package:flutter_login_app/modules/welcome/view/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get find => Get.find();

  final liquidController = LiquidController();
  RxInt currentPage = 0.obs;
 
  final pages = [
    OnBoardingWidget(
      model: OnBoardingModel(
        image: AppImages.onboardingImage1,
        title: AppStrings.onBoardingTitle1,
        subTitle: AppStrings.onBoardingSubTitle1,
        counterText: AppStrings.onBoardingCounter1,
        bgColor:AppConstants.isDarkMode ?AppColors.blackColor: AppColors.onBoardingPage1Color,
      ),
    ),
    OnBoardingWidget(
      model: OnBoardingModel(
        image: AppImages.onboardingImage2,
        title: AppStrings.onBoardingTitle2,
        subTitle: AppStrings.onBoardingSubTitle2,
        counterText: AppStrings.onBoardingCounter2,
        bgColor: AppColors.onBoardingPage2Color,
      ),
    ),
    OnBoardingWidget(
      model: OnBoardingModel(
        image: AppImages.onboardingImage3,
        title: AppStrings.onBoardingTitle3,
        subTitle: AppStrings.onBoardingSubTitle3,
        counterText: AppStrings.onBoardingCounter3,
        bgColor: AppColors.onBoardingPage3Color,
      ),
    ),
  ];

  void onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  void slideToNextPage() {
    final nextPage = currentPage.value + 1;
    if (nextPage <= 2) {
      liquidController.animateToPage(page: nextPage);
    } else {
      Get.to(const WelcomeScreen());
    }
  }

  void skip() {
    liquidController.jumpToPage(page: 2);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_login_app/core/components/app_animation_widget/controller/app_animation_controller.dart';
import 'package:flutter_login_app/core/components/app_animation_widget/model/animation_position_model.dart';
import 'package:flutter_login_app/core/components/app_animation_widget/view/animation_widget.dart';
import 'package:flutter_login_app/core/utils/app_colors.dart';
import 'package:flutter_login_app/core/utils/app_constants.dart';
import 'package:flutter_login_app/core/utils/app_images.dart';
import 'package:flutter_login_app/core/utils/app_size.dart';
import 'package:flutter_login_app/core/utils/app_strings.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final controller = Get.put(AppAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
    //  backgroundColor: AppConstants.isDarkMode?AppColors.sencodaryColor:AppColors.primaryColor,
      body: Stack(
        children: [
          AppAnimationWidget(
            durationInMiliSec: 1600,
            model: AnimationPositionModel(
                topBefore: -150,
                leftBefore: -150,
               
                leftAfter: -80,
                topAfter: -80),
            child: Image.asset(
              AppImages.splashShape,
              scale: 20,
              color: AppConstants.isDarkMode
                  ? AppColors.whiteColor
                  : AppColors.blackColor,
            ),
          ),
          /*    Obx(
            () => AnimatedPositioned(
              left: splashController.animate.value ? -80 : -150,
              top: splashController.animate.value ? -80 : -150,
              duration: const Duration(milliseconds: 1600),
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 1600),
                child: Image.asset(
                  AppImages.splashShape,
                  scale: 20,
                  color: AppConstants.isDarkMode
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                ),
              ),
            ),
          ), */
          AppAnimationWidget(
            durationInMiliSec: 1600,
            model: AnimationPositionModel(
                topBefore: 100,
                leftBefore: -50,
           
                leftAfter: 50,
                topAfter: 100),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.appName,
                    style: AppConstants.headline2,
                  ),
                  Text(
                    AppStrings.appTagLine,
                    style: AppConstants.subTitle2,
                  )
                ]),
          ),
          /* Obx(
            () => AnimatedPositioned(
              left: splashController.animate.value ? 50 : -50,
              top: 100,
              duration: const Duration(milliseconds: 1600),
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 1600),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.appName,
                        style: AppConstants.headline2,
                      ),
                      Text(
                        AppStrings.appTagLine,
                        style: AppConstants.subTitle2,
                      )
                    ]),
              ),
            ),
          ), */
          AppAnimationWidget(
            durationInMiliSec: 1600,
            model: AnimationPositionModel(
               
                bottomBefore: 0,
                bottomAfter: 200,
               ),
            child: Image.asset(
              AppImages.splashLogo,
              scale: 3,
              color: AppColors.blackColor,
            ),
          ),
          /*   Obx(
            () => AnimatedPositioned(
              bottom: splashController.animate.value ? 200 : 0,
              duration: const Duration(milliseconds: 1600),
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 1600),
                child: Image.asset(
                  AppImages.splashLogo,
                  scale: 3,
                  color: AppColors.blackColor,
                ),
              ),
            ),
          ), */
          AppAnimationWidget(
            durationInMiliSec: 1600,
            model: AnimationPositionModel(
              
                rightBefore: 40,
                bottomBefore: 0,
                bottomAfter: 70,
                rightAfter: 40,
              ),
            child: Container(
              width: AppSize.splashContainerSize,
              height: AppSize.splashContainerSize,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
         /*  Obx(
            () => AnimatedPositioned(
              right: 40,
              bottom: splashController.animate.value ? 70 : 0,
              duration: const Duration(milliseconds: 1600),
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 1600),
                child: Container(
                  width: AppSize.splashContainerSize,
                  height: AppSize.splashContainerSize,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ), */
        ],
      ),
    );
  }
}

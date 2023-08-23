import 'package:flutter/material.dart';
import 'package:flutter_login_app/core/utils/app_colors.dart';
import 'package:flutter_login_app/core/utils/app_constants.dart';
import 'package:flutter_login_app/modules/on_boarding/controller/on_boarding_controller.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final controller = Get.put(OnBoardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
              onPageChangeCallback: controller.onPageChangeCallback,
              liquidController: controller.liquidController,
              enableSideReveal:controller.currentPage.value==2?false :true,
              slideIconWidget: Visibility(
                visible:controller.currentPage.value==2?false :true ,
                child: const Icon(Icons.arrow_back_ios)),
              pages: controller.pages),
          Positioned(
            bottom: 150,
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(
                      side: BorderSide(width: 5, color: Colors.grey)),
                  padding: const EdgeInsets.all(12)),
              onPressed: controller.slideToNextPage,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: AppColors.blackColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
          Obx(
            () => Positioned(
                bottom: 50,
                child: AnimatedSmoothIndicator(
                  activeIndex: controller.currentPage.value,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: AppColors.accentColor,
                  ),
                )),
          ),
          Visibility(
            visible: controller.currentPage.value==2?false:true,
            child: Positioned(
              top: 30,
              right: 30,
              child: TextButton(
                onPressed: controller.skip,
                child: Text(
                  "Skip",
                  style: AppConstants.subTitle3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

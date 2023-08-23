import 'package:flutter/material.dart';
import 'package:flutter_login_app/core/components/app_animation_widget/model/animation_position_model.dart';
import 'package:flutter_login_app/core/components/app_animation_widget/view/animation_widget.dart';
import 'package:flutter_login_app/core/utils/app_colors.dart';
import 'package:flutter_login_app/core/utils/app_constants.dart';
import 'package:flutter_login_app/core/utils/app_images.dart';
import 'package:flutter_login_app/core/utils/app_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../core/components/app_animation_widget/controller/app_animation_controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppAnimationController());
    controller.startAnimation();

    return Scaffold(
      backgroundColor: AppConstants.isDarkMode
          ? AppColors.sencodaryColor
          : AppColors.primaryColor,
      body: Stack(
        children: [
          AppAnimationWidget(
            durationInMiliSec: 1200,
            model: AnimationPositionModel(
              bottomAfter: 0,
              bottomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    AppImages.welcomeImage,
                    height: AppConstants.screenHeight * .5,
                  ),
                  Column(
                    children: [
                      Text(
                        AppStrings.welcomeTitle,
                        style: AppConstants.headline3,
                      ),
                      Text(
                        AppStrings.welcomeSubTitle,
                        style: AppConstants.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: AppConstants.outlinedButtonStyle,
                          child: Text(
                            AppStrings.login.toUpperCase(),
                            //style: AppConstants.bodyText2,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: AppConstants.elevatedButtonStyle,
                          child: Text(
                            AppStrings.signup.toUpperCase(),
                            //style: AppConstants.bodyText2,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

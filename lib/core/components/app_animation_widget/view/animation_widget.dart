import 'package:flutter/material.dart';
import 'package:flutter_login_app/core/components/app_animation_widget/controller/app_animation_controller.dart';
import 'package:flutter_login_app/core/components/app_animation_widget/model/animation_position_model.dart';
import 'package:get/get.dart';

class AppAnimationWidget extends StatelessWidget {
  const AppAnimationWidget(
      {super.key,
      required this.durationInMiliSec,
      required this.model,
      required this.child});
  final int durationInMiliSec;
  final AnimationPositionModel model;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppAnimationController());

    return Obx(
      () => AnimatedPositioned(
        left: controller.animate.value ? model.leftAfter : model.leftBefore,
        top: controller.animate.value ? model.topAfter : model.topBefore,
        bottom:
            controller.animate.value ? model.bottomAfter : model.bottomBefore,
        right: controller.animate.value ? model.rightAfter : model.rightBefore,
        duration: Duration(milliseconds: durationInMiliSec),
        child: AnimatedOpacity(
            opacity: controller.animate.value ? 1 : 0,
            duration: Duration(milliseconds: durationInMiliSec),
            child: child),
      ),
    );
  }
}

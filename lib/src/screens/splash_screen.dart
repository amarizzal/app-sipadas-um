import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_sipadas_um/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:app_sipadas_um/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:app_sipadas_um/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            TFadeAnimation(
              durationInMs: 1600,
              child: Image(
                image: AssetImage("assets/images/Lambang-UM.png"),
              ),
              animate: TAnimatePosition(
                  topAfter: 220,
                  topBefore: 220,
                  leftBefore: -10,
                  leftAfter: 0,
                  rightAfter: 0,
                  rightBefore: 0),
            ),
          ],
        ));
  }
}

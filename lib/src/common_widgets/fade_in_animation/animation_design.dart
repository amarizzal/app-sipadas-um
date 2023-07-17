import 'package:flutter/material.dart';
import 'package:app_sipadas_um/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:app_sipadas_um/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:get/get.dart';

class TFadeAnimation extends StatelessWidget {
  TFadeAnimation(
      {Key? key, required this.durationInMs, required this.child, this.animate})
      : super(key: key);

  final controller = Get.put(FadeInAnimationController());
  final durationInMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
        bottom: controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        left:
            controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        right: controller.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        child: Obx(() => AnimatedOpacity(
              duration: Duration(milliseconds: durationInMs),
              opacity: controller.animate.value ? 1 : 0,
              child: child,
            )),
      ),
    );
  }
}

import 'package:app_sipadas_um/src/screens/home_screen.dart';
import 'package:get/get.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();

  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    // final box = GetStorage();
    // final token = box.read('token');
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 1000));
    Get.offAll(() => HomeScreen());
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
  }
}

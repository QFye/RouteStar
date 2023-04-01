import 'package:get/get.dart';
import 'package:schedule_system/pages/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController()); //页面绑定
  }
}

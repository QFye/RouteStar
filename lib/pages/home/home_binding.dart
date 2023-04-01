import 'package:get/get.dart';
import 'package:schedule_system/pages/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController()); //页面绑定->使用时初始化
  }
}

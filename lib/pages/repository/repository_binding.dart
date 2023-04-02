import 'package:get/get.dart';
import 'package:schedule_system/pages/repository/repository_controller.dart';

class RepositoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RepositoryController>(RepositoryController()); //页面绑定
  }
}

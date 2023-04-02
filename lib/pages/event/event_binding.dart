import 'package:get/get.dart';
import 'package:schedule_system/pages/event/event_controller.dart';

class EventBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<EventController>(EventController()); //页面绑定
  }
}

import 'package:get/get.dart';
import 'package:schedule_system/common/config.dart';
import 'package:schedule_system/models/event.dart';

class RepositoryController extends GetxController {
  List<Event> events = List.from(testEvents);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }
}

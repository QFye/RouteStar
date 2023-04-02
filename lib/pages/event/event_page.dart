import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_system/models/event.dart';
import 'package:schedule_system/models/widgets/navigator_bar.dart';
import 'package:schedule_system/pages/event/event_controller.dart';

/* 日程事件添加页 */
class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: NavigatorBar(
              navigatorBarCloseType: NavigatorBarCloseType.back,
              backgroundColor: Colors.blue.shade300,
              fontColor: Colors.grey.shade100,
              title: "添加日程事件",
            ),
            body: Container(
              color: Colors.white,
            )));
  }
}

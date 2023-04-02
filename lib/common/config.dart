import 'package:flutter/material.dart';
import 'package:schedule_system/models/Illustration.dart';
import 'package:schedule_system/models/event.dart';

final List splashIllustrations = [
  Illustration(
      asset: 'assets/illustrations/plan_on_phone.svg', copyright: '星迹团队版权所有'),
  Illustration(asset: 'assets/illustrations/team.svg', copyright: '星迹团队版权所有'),
  Illustration(
      asset: 'assets/illustrations/cross_phone.svg', copyright: '星迹团队版权所有')
];
final List<Event> testEvents = [
  Event(
      1, "写代码", DateTime(2023, 4, 2, 12, 0, 0), DateTime(2023, 4, 2, 15, 0, 0),
      eventMarkedColor: Colors.red),
  Event(
      2, "吃饭", DateTime(2023, 4, 2, 17, 40, 0), DateTime(2023, 4, 2, 18, 20, 0),
      eventMarkedColor: Colors.orange, eventDescription: "和朋友一起出去聚餐"),
  Event(
      3, "逛街", DateTime(2023, 4, 2, 17, 40, 0), DateTime(2023, 4, 2, 18, 20, 0),
      eventMarkedColor: Colors.yellow, eventDescription: "逛商场和购物"),
  Event(4, "写作业", DateTime(2023, 4, 2, 17, 40, 0),
      DateTime(2023, 4, 2, 18, 20, 0),
      eventMarkedColor: Colors.green),
  Event(
      5, "睡觉", DateTime(2023, 4, 2, 17, 40, 0), DateTime(2023, 4, 2, 18, 20, 0),
      eventMarkedColor: Colors.blue.shade300),
  Event(
      6, "洗漱", DateTime(2023, 4, 2, 17, 40, 0), DateTime(2023, 4, 2, 18, 20, 0),
      eventMarkedColor: Colors.blue.shade700),
  Event(7, "校园跑", DateTime(2023, 4, 2, 17, 40, 0),
      DateTime(2023, 4, 2, 18, 20, 0),
      eventMarkedColor: Colors.purple, eventDescription: "每日刷步数"),
];

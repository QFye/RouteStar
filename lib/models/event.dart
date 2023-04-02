import 'package:flutter/material.dart';

class Event {
  final int eventId;
  String eventName;
  DateTime eventStartTime;
  DateTime eventEndTime;
  Color? eventMarkedColor;
  String? eventDescription;

  Event(this.eventId, this.eventName, this.eventStartTime, this.eventEndTime,
      {this.eventMarkedColor = Colors.white, this.eventDescription});
}

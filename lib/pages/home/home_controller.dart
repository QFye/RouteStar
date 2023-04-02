import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_system/models/widgets/keep_alive_widget.dart';
import 'package:schedule_system/pages/repository/repository_page.dart';

class HomeController extends GetxController {
  var pageController = PageController(initialPage: 0);
  late List<Widget> pageViews;

  @override
  void onInit() {
    super.onInit();
    pageViews = [
      KeepAliveWidget(Container(
          color: Colors.blue.shade200,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          child: const Text("Test for page 1"))),
      KeepAliveWidget(RepositoryPage()),
      KeepAliveWidget(Container(
          color: Colors.blue.shade200,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          child: const Text("Test for page 3"))),
      KeepAliveWidget(Container(
          color: Colors.blue.shade200,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          child: const Text("Test for page 4"))),
    ];
  }

  @override
  void onReady() async {
    super.onReady();
  }
}

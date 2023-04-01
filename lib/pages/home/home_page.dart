import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_system/models/widgets/home_page_tabview.dart';
import 'package:schedule_system/pages/home/home_controller.dart';

class HomePage extends StatelessWidget {
  final double bottomTabViewHeight = 50.0;

  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: homeController.pageController,
              children: [
                Container(
                    color: Colors.blue.shade200,
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Text("Test for page 1")),
                Container(
                    color: Colors.blue.shade300,
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Text("Test for page 2")),
                Container(
                    color: Colors.blue.shade200,
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Text("Test for page 3")),
                Container(
                    color: Colors.blue.shade300,
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Text("Test for page 4"))
              ],
            )),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  color: Colors.white,
                  height: bottomTabViewHeight,
                  child: HomePageTabview(
                      tabIconPaths: const [
                        "assets/icons/chart.svg",
                        "assets/icons/inbox.svg",
                        "assets/icons/users.svg",
                        "assets/icons/my.svg"
                      ],
                      activeColor: Colors.green.shade200,
                      selectedIndex: 0,
                      onPress: (index) {
                        homeController.pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease);
                      }),
                ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_system/models/widgets/home_page_tabview.dart';
import 'package:schedule_system/pages/home/home_controller.dart';
import 'package:schedule_system/pages/repository/repository_page.dart';

/* 主页面 */
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
              children: homeController.pageViews,
            )),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  color: Colors.blue.shade200,
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

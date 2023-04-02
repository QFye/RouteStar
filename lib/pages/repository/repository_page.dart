import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:schedule_system/models/event.dart';
import 'package:schedule_system/models/widgets/navigator_bar.dart';
import 'package:schedule_system/pages/repository/repository_controller.dart';
import 'package:schedule_system/routes/app_routes.dart';

/* 仓库页 */
class RepositoryPage extends StatelessWidget {
  final RepositoryController repositoryController =
      Get.find<RepositoryController>();

  Widget _renderEventItem(Event? event, int index, context) {
    if (event == null) return const SizedBox.shrink();
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
            top: index == 0 ? 30 : 15,
            left: 30,
            right: 30,
            bottom: index == repositoryController.events.length - 1 ? 80 : 15),
        height: 80,
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
            color: event.eventMarkedColor,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: Container(
            color: event.eventMarkedColor,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 2),
                    child: Text(event.eventName,
                        style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 4),
                      child: Text(event.eventDescription ?? "这是一个已创建的日程事件",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey.shade200,
                              fontWeight: FontWeight.w400)))
                ]),
          ))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
            margin: const EdgeInsets.only(bottom: 60),
            child: FloatingActionButton(
                elevation: 2.0,
                backgroundColor: Colors.blue.shade400,
                onPressed: () {
                  Get.toNamed(Routes.EVENT);
                },
                shape: const CircleBorder(),
                child: SvgPicture.asset(
                  "assets/icons/add_icon.svg",
                  width: 35,
                  height: 35,
                  color: Colors.grey.shade200,
                ))),
        backgroundColor: Colors.white,
        appBar: NavigatorBar(
          navigatorBarCloseType: NavigatorBarCloseType.empty,
          backgroundColor: Colors.blue.shade300,
          fontColor: Colors.grey.shade100,
          title: "日程仓库",
        ),
        body: PageView(
          children: [
            Container(
              color: Colors.white,
              child: LiveList(
                  showItemInterval: const Duration(milliseconds: 200),
                  showItemDuration: const Duration(milliseconds: 200),
                  itemBuilder: (context, index, animation) {
                    /* 动画效果 */
                    return FadeTransition(
                        opacity:
                            Tween<double>(begin: 0, end: 1).animate(animation),
                        child: SlideTransition(
                            position: Tween<Offset>(
                                    begin: const Offset(0, 1), end: Offset.zero)
                                .animate(animation),
                            child: _renderEventItem(
                                repositoryController.events[index],
                                index,
                                context)));
                  },
                  itemCount: repositoryController.events.length),
            ),
            Container(color: Colors.white)
          ],
        ));
  }
}

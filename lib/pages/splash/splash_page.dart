import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:schedule_system/models/Illustration.dart';
import 'package:schedule_system/pages/splash/splash_controller.dart';
import 'package:schedule_system/routes/app_routes.dart';

/* 闪屏页 */

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageviewWight(),
    );
  }
}

class PageviewWight extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PageviewWightState();
  }
}

class PageviewWightState extends State<PageviewWight> {
  SplashController splashController = Get.find<SplashController>(); //控制器

  int currentIndex = 0; //当前页码

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        PageView.builder(
            itemCount: 3,
            onPageChanged: (index) => {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  )
                },
            itemBuilder: (BuildContext context, int index) {
              if (index > splashController.illustrations.length - 1) {
                return const SizedBox.shrink();
              }
              Illustration illustration = splashController.illustrations[index];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: Get.height / 2 - (Get.width - 40) / 2 - 50),
                    child: SvgPicture.asset(illustration.asset!,
                        height: Get.width - 40),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 20),
                    width: double.infinity,
                    child: Text(
                      illustration.copyright ?? "",
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  index == splashController.illustrations.length - 1
                      ? Container(
                          margin: const EdgeInsets.only(top: 30),
                          width: 260,
                          height: 50,
                          child: TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.HOME);
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  return Colors.green;
                                }),
                                textStyle: MaterialStateProperty.all(
                                  const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                foregroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  return Colors.black;
                                }),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14.0)))),
                            child: const Text("开启全新计划"),
                          ),
                        )
                      : index == 0
                          ? Container(
                              margin: const EdgeInsets.only(top: 30),
                              width: 220,
                              height: 50,
                              alignment: Alignment.center,
                              child: const Text(
                                "共享协作乐趣",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          : Container(
                              margin: const EdgeInsets.only(top: 30),
                              width: 220,
                              height: 50,
                              alignment: Alignment.center,
                              child: const Text(
                                "体验科技生活",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                ],
              );
            }),
        Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).padding.bottom + 40,
            // 页码标记点
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == 0
                        ? Colors.grey
                        : Colors.grey.withOpacity(0.7)),
              ),
              Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == 1
                        ? Colors.grey
                        : Colors.grey.withOpacity(0.7)),
              ),
              Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == 2
                        ? Colors.grey
                        : Colors.grey.withOpacity(0.7)),
              )
            ])) //适配各手机无论是否有安全区域
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:schedule_system/routes/app_routes.dart';

Widget createApp() {
  return GetMaterialApp(
    initialRoute: Routes.SPLASH,
    // App所有页面
    getPages: AppPages.pages,
  );
}

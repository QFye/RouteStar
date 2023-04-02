import 'package:get/get.dart';
import 'package:schedule_system/pages/event/event_binding.dart';
import 'package:schedule_system/pages/event/event_page.dart';
import 'package:schedule_system/pages/home/home_binding.dart';
import 'package:schedule_system/pages/home/home_page.dart';
import 'package:schedule_system/pages/repository/repository_binding.dart';
import 'package:schedule_system/pages/repository/repository_page.dart';
import 'package:schedule_system/pages/splash/splash_binding.dart';
import 'package:schedule_system/pages/splash/splash_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.SPLASH,
        page: () => SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: Routes.REPOSITORY,
        page: () => RepositoryPage(),
        binding: RepositoryBinding()),
    GetPage(
        name: Routes.EVENT, page: () => EventPage(), binding: EventBinding()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding())
  ];
}

//命名路由的名称
abstract class Routes {
  static const INITIAL = "/";
  //闪屏页
  static const SPLASH = "/splash";
  //主页
  static const HOME = "/home";
  //仓库页
  static const REPOSITORY = "/home/repository";
  //日程事件添加页
  static const EVENT = "/event";
}

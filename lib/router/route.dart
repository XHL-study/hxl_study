import 'package:hxl_study/pages/page_animate/index.dart';
import 'package:hxl_study/pages/page_animate/index2.dart';
import 'package:hxl_study/router/animate.dart';
import 'package:hxl_study/router/settings.dart';

///
///页面路由配置
///
class Routes {
  Routes._();

  static const String initialRoute = PageAnimateIndex.route;

  static Map<String, HXLRouter> routes = {
    PageAnimateIndex.route: HXLRouter(
      title: 'animate index',
      pageBuilder: () => const PageAnimateIndex(),
    ),
    PageAnimateIndex2.route: HXLRouter(
      title: 'animate index2',
      pageBuilder: () => const PageAnimateIndex2(),
      pageAnimate: HXLPageAnimate.slidToRight,
    ),
  };
}

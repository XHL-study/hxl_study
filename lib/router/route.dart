import 'package:hxl_study/pages/index.dart';
import 'package:hxl_study/pages/page_animate/index.dart';
import 'package:hxl_study/pages/page_animate/index2.dart';
import 'package:hxl_study/router/animate.dart';
import 'package:hxl_study/router/settings.dart';

///
///页面路由配置
///
class Routes {
  Routes._();

  static const String initialRoute = Index.route;

  static Map<String, HXLRouter> routes = {
    Index.route: HXLRouter(
      title: 'index',
      pageBuilder: () => const Index(),
    ),
    PageAnimateIndex.route: HXLRouter(
      title: 'animate index',
      pageBuilder: () => const PageAnimateIndex(),
      pageAnimate: HXLPageAnimate.slidToLeft,
    ),
    PageAnimateIndex2.route: HXLRouter(
      title: 'animate index2',
      pageBuilder: () => const PageAnimateIndex2(),
      pageAnimate: HXLPageAnimate.slidToRight,
    ),
  };
}

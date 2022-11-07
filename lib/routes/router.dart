import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hxl_study/pages/page_animate/index.dart';
import 'package:hxl_study/routes/animate.dart';

import '../pages/page_animate/index2.dart';

///路由页面
typedef HXLPageBuilder = Widget Function();

///页面跳转方式
typedef HXLPageAnimateFunction = Widget Function(Widget child, Animation<double> animation);

///页面路由配置
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
    ),
  };
}

/// 初始化路由页面对象
class HXLRouter {
  final String title;
  final HXLPageAnimateFunction pageAnimate;
  final HXLPageBuilder pageBuilder;

  HXLRouter({required this.title, required this.pageBuilder, this.pageAnimate = HXLPageAnimate.system});
}

class HXLRouteSettings extends RouteSettings {
  ///动画回调
  final HXLPageAnimateFunction pageAnimate;

  const HXLRouteSettings({this.pageAnimate = HXLPageAnimate.system, super.name, super.arguments});

  ///统一页面传参的方式，方便目标页面统一接收参数
  static HXLRouteSettings copy(RouteSettings settings, HXLRouter? hxlRouter) {
    try {
      HXLRouteSettings hxlRouteSettings = settings.arguments as HXLRouteSettings;
      return HXLRouteSettings(name: settings.name, arguments: hxlRouteSettings.arguments, pageAnimate: hxlRouteSettings.pageAnimate);
    } catch (e) {
      return HXLRouteSettings(
          name: settings.name, arguments: settings.arguments, pageAnimate: hxlRouter?.pageAnimate ?? HXLPageAnimate.system);
    }
  }

  @override
  String toString() => '${objectRuntimeType(this, 'RouteSettings')}("$name", $pageAnimate, $arguments)';
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hxl_study/router/animate.dart';

///路由页面
typedef HXLPageBuilder = Widget Function();

///页面跳转方式
typedef HXLPageAnimateFunction = Widget Function(Widget child, Animation<double> animation);

///
/// 路由页面对象
///
class HXLRouter {
  ///默认标题
  final String? title;

  ///默认的页面跳转动画回调
  final HXLPageAnimateFunction pageAnimate;

  ///页面
  final HXLPageBuilder pageBuilder;

  HXLRouter({
    required this.title,
    required this.pageBuilder,
    this.pageAnimate = HXLPageAnimate.system,
  });
}

///
///路由跳转传参
///
class HXLRouteSettings extends RouteSettings {
  ///页面标题，，传入此参数会覆盖默认的[HXLRouter.title]
  final String? title;

  ///动画跳转方式回调，传入此参数会覆盖默认的[HXLRouter.pageAnimate]
  final HXLPageAnimateFunction pageAnimate;

  const HXLRouteSettings({
    this.title,
    this.pageAnimate = HXLPageAnimate.system,
    super.name,
    super.arguments,
  });

  ///统一页面传参
  static HXLRouteSettings set(
    RouteSettings settings,
    HXLRouter? hxlRouter,
  ) {
    try {
      HXLRouteSettings hxlRouteSettings = settings.arguments as HXLRouteSettings;
      return HXLRouteSettings(
        title: hxlRouteSettings.title ?? hxlRouter?.title,
        name: settings.name,
        arguments: hxlRouteSettings.arguments,
        pageAnimate: hxlRouteSettings.pageAnimate,
      );
    } catch (e) {
      return HXLRouteSettings(
        title: hxlRouter?.title,
        name: settings.name,
        arguments: settings.arguments,
        pageAnimate: hxlRouter?.pageAnimate ?? HXLPageAnimate.system,
      );
    }
  }

  ///统一获取页面参数
  static HXLRouteSettings get(BuildContext context) {
    return ModalRoute.of(context)!.settings as HXLRouteSettings;
  }

  @override
  String toString() =>
      '${objectRuntimeType(this, 'RouteSettings')}("name=$name",title=$title", pageAnimate=$pageAnimate, arguments=$arguments)';
}

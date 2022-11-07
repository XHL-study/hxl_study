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
  final String title;
  final HXLPageAnimateFunction pageAnimate;
  final HXLPageBuilder pageBuilder;

  HXLRouter({required this.title, required this.pageBuilder, this.pageAnimate = HXLPageAnimate.system});
}

///
///路由跳转传参
///
class HXLRouteSettings extends RouteSettings {
  final String? title;

  ///动画跳转方式回调
  final HXLPageAnimateFunction pageAnimate;

  const HXLRouteSettings({this.title, this.pageAnimate = HXLPageAnimate.system, super.name, super.arguments});

  ///统一页面传参的方式，方便目标页面统一接收参数
  static HXLRouteSettings copy(RouteSettings settings, HXLRouter? hxlRouter) {
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

  @override
  String toString() => '${objectRuntimeType(this, 'RouteSettings')}("$name", $pageAnimate, $arguments)';
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hxl_study/common/constant/str.dart';
import 'package:hxl_study/pages/error/404.dart';
import 'package:hxl_study/router/route.dart';
import 'package:hxl_study/router/settings.dart';

void main() {
  ///系统ui样式设置
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      ///去掉状态栏黑半透明
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ConstantString.appName,
      initialRoute: Routes.initialRoute,
      onGenerateRoute: (RouteSettings settings) {
        ///获取跳转的页面
        HXLRouter? hxlRouter = Routes.routes[settings.name];

        ///统一页面传参方式，方便目标页面统一接收
        HXLRouteSettings hxlSettings = HXLRouteSettings.set(settings, hxlRouter);

        ///跳转
        return PageRouteBuilder(
          settings: hxlSettings,
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
            /// 找不到页面
            if (null == hxlRouter) {
              return const Page404();
            }

            ///正常页面
            return hxlRouter.pageBuilder();
          },
          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
            ///动画
            return hxlSettings.pageAnimate(child, animation);
          },
        );
      },
    );
  }
}

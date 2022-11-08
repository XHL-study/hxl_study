import 'package:flutter/material.dart';
import 'package:hxl_study/router/animate.dart';
import 'package:hxl_study/router/settings.dart';
import 'package:hxl_study/extension/function.dart';

class Page404 extends StatelessWidget {
  static const String route = '/404';

  const Page404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HXLRouteSettings args = HXLRouteSettings.get(context);

    debugPrint("animate is  ${args.pageAnimate == HXLPageAnimate.slidToTop} HXLPageAnimate.slidToTop");
    debugPrint(" function name is ${args.pageAnimate.name()}");
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("没找到页面 ${args.name} ${args.pageAnimate.name()}"),
      ),
      body: Center(
        child: Text(
          "页面404\n$args",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

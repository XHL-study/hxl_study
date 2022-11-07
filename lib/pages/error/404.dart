import 'package:flutter/material.dart';
import 'package:hxl_study/routes/animate.dart';
import 'package:hxl_study/routes/router.dart';

class Page404 extends StatelessWidget {
  const Page404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HXLRouteSettings args = ModalRoute.of(context)!.settings as HXLRouteSettings;

    debugPrint("animate is  ${args.pageAnimate == HXLPageAnimate.slidToTop} HXLPageAnimate.slidToTop");
    return Scaffold(
      appBar: AppBar(
        title: const Text("没找到页面"),
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

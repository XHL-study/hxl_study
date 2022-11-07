import 'package:flutter/material.dart';
import 'package:hxl_study/routes/animate.dart';
import 'package:hxl_study/routes/router.dart';


class PageAnimateIndex2 extends StatelessWidget {
  static const String route = 'page/animate/index2';

  const PageAnimateIndex2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HXLRouteSettings args = ModalRoute.of(context)!.settings as HXLRouteSettings;

    debugPrint("${args.pageAnimate == HXLPageAnimate.slidToTop}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("index2"),
      ),
      body: Center(
        child: Text('test page animate page index2\n $args'),
      ),
    );
  }
}

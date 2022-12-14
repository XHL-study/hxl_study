import 'package:flutter/material.dart';
import 'package:hxl_study/router/animate.dart';
import 'package:hxl_study/router/settings.dart';

class PageAnimateIndex2 extends StatelessWidget {
  static const String route = '/page/animate/index2';

  const PageAnimateIndex2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HXLRouteSettings args = HXLRouteSettings.get(context);

    debugPrint("${args.title}");
    return Scaffold(
      appBar: AppBar(
        title: Text("${args.title}"),
      ),
      body: Center(
        child: Text(
          'test page animate page index2\n $args',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

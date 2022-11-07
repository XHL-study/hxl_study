import 'package:flutter/material.dart';
import 'package:hxl_study/pages/page_animate/index2.dart';
import 'package:hxl_study/routes/animate.dart';
import 'package:hxl_study/routes/router.dart';

class PageAnimateIndex extends StatelessWidget {
  static const String route = 'page/animate/index';

  const PageAnimateIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("test page animate"),
      ),
      body: Center(
          child: Column(
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed(PageAnimateIndex2.route,
                  arguments: const HXLRouteSettings(pageAnimate: HXLPageAnimate.slidToTop, arguments: "哦哦"));
            },
            child: const Text("to pate/animate/index2 slidToLeft HXLRouteSettings arguments"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed(PageAnimateIndex2.route, arguments: "哦哦");
            },
            child: const Text("to pate/animate/index2 system default arguments"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/page/404', arguments: const HXLRouteSettings(pageAnimate: HXLPageAnimate.slidToLeft, arguments: "找不到页面"));
            },
            child: const Text("to page/404 slidToLeft HXLRouteSettings arguments"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/page/404', arguments: const HXLRouteSettings(pageAnimate: HXLPageAnimate.slidToRight, arguments: "找不到页面"));
            },
            child: const Text("to page/404  slidToRight HXLRouteSettings arguments"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/page/404', arguments: const HXLRouteSettings(pageAnimate: HXLPageAnimate.slidToTop, arguments: "找不到页面"));
            },
            child: const Text("to page/404  slidToTop HXLRouteSettings arguments"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/page/404', arguments: const HXLRouteSettings(pageAnimate: HXLPageAnimate.slidToBottom, arguments: "找不到页面"));
            },
            child: const Text("to page/404  slidToBottom HXLRouteSettings arguments"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/page/404',
                  arguments: const HXLRouteSettings(pageAnimate: HXLPageAnimate.slidToBottomRight, arguments: "找不到页面"));
            },
            child: const Text("to page/404  slidToBottomRight HXLRouteSettings arguments"),
          ),
        ],
      )),
    );
  }
}

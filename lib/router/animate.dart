import 'package:flutter/material.dart';

///
/// 页面跳转动画
///

class HXLPageAnimate {
  HXLPageAnimate._();

  ///默认
  static Widget system(Widget child, Animation<double> animation) {
    return child;
  }

  ///slidToTop
  static Widget slidToTop(Widget child, Animation<double> animation) {
    const begin = Offset(0.0, 1.0);
    const end = Offset.zero;
    const curve = Curves.ease;
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  }

  ///slidToBottom
  static Widget slidToBottom(Widget child, Animation<double> animation) {
    const begin = Offset(0.0, -1.0);
    const end = Offset.zero;
    const curve = Curves.ease;
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  }

  ///slidToLeft
  static Widget slidToLeft(Widget child, Animation<double> animation) {
    const begin = Offset(1.0, 0.0);
    const end = Offset.zero;
    const curve = Curves.ease;
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  }

  ///slidToRight
  static Widget slidToRight(Widget child, Animation<double> animation) {
    const begin = Offset(-1.0, 0.0);
    const end = Offset.zero;
    const curve = Curves.ease;
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  }

  ///slidToRight
  static Widget slidToBottomRight(Widget child, Animation<double> animation) {
    const begin = Offset(-2.0, -1.0);
    const end = Offset.zero;
    const curve = Curves.ease;
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  }
}

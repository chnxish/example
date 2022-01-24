// https://github.com/zhengzhuang96/flutter_fluro/blob/master/lib/routers/navigator_util.dart

import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_example/pages/home_page.dart';
import 'package:flutter_example/routers/application.dart';
import 'package:flutter_example/routers/routes.dart';

class NavigatorUtil {
  static void goBack(BuildContext context) {
    Application.router.pop(context);
  }

  static void goBackWithParams(BuildContext context, result) {
    Navigator.pop(context, result);
  }

  static void goBackUrl(BuildContext context, String title) {
    Navigator.popAndPushNamed(context, title);
  }

  static void goHomePage(BuildContext context) {
    Application.router.navigateTo(context, Routes.home, replace: true);
  }

  static Future jump(BuildContext context, String title) {
    return Application.router
        .navigateTo(context, title, transition: TransitionType.inFromBottom);
  }

  static Future jumpLeft(BuildContext context, String title) {
    return Application.router
        .navigateTo(context, title, transition: TransitionType.inFromLeft);
  }

  static Future jumpRemove(BuildContext context) {
    // https://stackoverflow.com/questions/45889341/flutter-remove-all-routes
    return Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
        (route) => false);
  }

  static Future gotransitionCustomDemoPage(BuildContext context, String title) {
    var transition = (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return ScaleTransition(
        scale: animation,
        child: RotationTransition(
          turns: animation,
          child: child,
        ),
      );
    };
    return Application.router.navigateTo(
      context,
      title,
      transition: TransitionType.custom,
      transitionBuilder: transition,
      transitionDuration: const Duration(milliseconds: 600),
    );
  }

  static Future gotransitionCupertinoDemoPage(
      BuildContext context, String title) {
    return Application.router
        .navigateTo(context, title, transition: TransitionType.cupertino);
  }

  static void goToHomeRemovePage(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
        (route) => false);
  }
}

import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_example/routers/router_handler.dart';

class Routes {
  static String home = '/';
  static String multilineappbar = '/multilineappbar';
  static String sdkeyboard = '/sdkeyboard';
  static String search = '/search';
  static String stateful = '/stateful';
  static String stateless = '/stateless';
  static String theme = '/theme';
  static String widgets = '/widgets';

  // subpage of widgets_page
  static String subpage1 = '/subpage1';
  static String subpage2 = '/subpage2';
  static String subpage3 = '/subpage3';
  static String subpage4 = '/subpage4';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print('ROUTE WAS NOT FOUND !!!');
      return;
    });
    router.define(home, handler: homePageHandler);
    router.define(multilineappbar, handler: multilineAppbarPageHandler);
    router.define(sdkeyboard, handler: sdkeyboardPageHandler);
    router.define(search, handler: searchPageHandler);
    router.define(stateful, handler: statefulPageHandler);
    router.define(stateless, handler: statelessPageHandler);
    router.define(theme, handler: themePageHandler);
    router.define(widgets, handler: widgetsPageHandler);

    // subpage of widgets_page
    router.define(subpage1, handler: subpageOfWidgetsPage1);
    router.define(subpage2, handler: subpageOfWidgetsPage2);
    router.define(subpage3, handler: subpageOfWidgetsPage3);
    router.define(subpage4, handler: subpageOfWidgetsPage4);
  }
}

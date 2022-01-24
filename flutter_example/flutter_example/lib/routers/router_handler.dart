import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_example/pages/home_page.dart';
import 'package:flutter_example/pages/multiline_appbar_page.dart';
import 'package:flutter_example/pages/sd_keyboard_page.dart';
import 'package:flutter_example/pages/search_page.dart';
import 'package:flutter_example/pages/stateful_page.dart';
import 'package:flutter_example/pages/stateless_page.dart';
import 'package:flutter_example/pages/theme_page.dart';
import 'package:flutter_example/pages/widgets_page.dart';

import 'package:flutter_example/pages/subpage_of_widgets_page/page1.dart';
import 'package:flutter_example/pages/subpage_of_widgets_page/page2.dart';
import 'package:flutter_example/pages/subpage_of_widgets_page/page3.dart';
import 'package:flutter_example/pages/subpage_of_widgets_page/page4.dart';

var homePageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return HomePage();
});

var multilineAppbarPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return MultilineAppbarPage();
});

var sdkeyboardPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return SDKeyboardPage();
});

var searchPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return SearchPage();
});

var statefulPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return StatefulPage('Stateful');
});

var statelessPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return StatelessPage('Stateless');
});

var themePageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return ThemePage();
});

var widgetsPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return WidgetsPage('Widgets');
});

// subpage of widgets_page
var subpageOfWidgetsPage1 = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return SubpageOfWidgetsPage1();
});

var subpageOfWidgetsPage2 = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return SubpageOfWidgetsPage2();
});

var subpageOfWidgetsPage3 = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return SubpageOfWidgetsPage3();
});

var subpageOfWidgetsPage4 = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return SubpageOfWidgetsPage4();
});

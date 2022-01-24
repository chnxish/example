import 'package:flutter/material.dart';
import 'package:flutter_example/routers/navigator_util.dart';

class HomePage extends StatelessWidget {
  final List<String> entries = <String>[
    'StatelessPage',
    'StatefulPage',
    'WidgetsPage',
    'SDKeyboardPage',
    'ThemePage',
    'MultilineAppbarPage',
    'SearchPage'
  ];
  // color palettes: https://api.flutter.dev/flutter/material/Colors-class.html
  final List<int> colorCodes = <int>[500, 400, 300];
  static final TextStyle textStyle =
      TextStyle(fontSize: 20.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    entries[0],
                    style: textStyle,
                  ),
                  minWidth: 300.0,
                  height: 50.0,
                  color: Colors.amber[colorCodes[0]],
                  onPressed: () => NavigatorUtil.jump(context, '/stateless'),
                ),
                SizedBox(height: 10.0),
                MaterialButton(
                  child: Text(
                    entries[1],
                    style: textStyle,
                  ),
                  minWidth: 300.0,
                  height: 50.0,
                  color: Colors.amber[colorCodes[1]],
                  onPressed: () => NavigatorUtil.jump(context, '/stateful'),
                ),
                SizedBox(height: 10.0),
                MaterialButton(
                  child: Text(
                    entries[2],
                    style: textStyle,
                  ),
                  minWidth: 300.0,
                  height: 50.0,
                  color: Colors.amber[colorCodes[2]],
                  onPressed: () => NavigatorUtil.jump(context, '/widgets'),
                ),
                SizedBox(height: 10.0),
                MaterialButton(
                  child: Text(
                    entries[3],
                    style: textStyle,
                  ),
                  minWidth: 300.0,
                  height: 50.0,
                  color: Colors.lightGreen[colorCodes[0]],
                  onPressed: () => NavigatorUtil.jump(context, '/sdkeyboard'),
                ),
                SizedBox(height: 10.0),
                MaterialButton(
                  child: Text(
                    entries[4],
                    style: textStyle,
                  ),
                  minWidth: 300.0,
                  height: 50.0,
                  color: Colors.lightGreen[colorCodes[1]],
                  onPressed: () => NavigatorUtil.jump(context, '/theme'),
                ),
                SizedBox(height: 10.0),
                MaterialButton(
                  child: Text(
                    entries[5],
                    style: textStyle,
                  ),
                  minWidth: 300.0,
                  height: 50.0,
                  color: Colors.lightGreen[colorCodes[2]],
                  onPressed: () =>
                      NavigatorUtil.jump(context, '/multilineappbar'),
                ),
                SizedBox(height: 10.0),
                MaterialButton(
                  child: Text(
                    entries[6],
                    style: textStyle,
                  ),
                  minWidth: 300.0,
                  height: 50.0,
                  color: Colors.cyan[colorCodes[0]],
                  onPressed: () => NavigatorUtil.jump(context, '/search'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

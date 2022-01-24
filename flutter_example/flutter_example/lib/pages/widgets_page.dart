import 'package:flutter/material.dart';
import 'package:flutter_example/routers/navigator_util.dart';

class WidgetsPage extends StatelessWidget {
  final String text;

  WidgetsPage(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.text),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            child: TextButton(
              onPressed: () => NavigatorUtil.jump(context, '/subpage1'),
              child: const Text('base'),
            ),
            color: Colors.teal[100],
          ),
          Container(
            child: TextButton(
              onPressed: () => NavigatorUtil.jump(context, '/subpage2'),
              child: const Text('input'),
            ),
            color: Colors.teal[200],
          ),
          Container(
            child: TextButton(
              onPressed: () => NavigatorUtil.jump(context, '/subpage3'),
              child: const Text('list view'),
            ),
            color: Colors.teal[300],
          ),
          Container(
            child: TextButton(
              onPressed: () => NavigatorUtil.jump(context, '/subpage4'),
              child: const Text('grid view'),
            ),
            color: Colors.teal[400],
          ),
        ],
      ),
    );
  }
}

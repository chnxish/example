import 'dart:math' as math;
import 'package:flutter/material.dart';

class SubpageOfWidgetsPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subpage 1'),
      ),
      // Center Container Padding
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.blue[600],
              width: 100.0,
              height: 100.0,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Padding'),
              ),
            ),
            Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[100],
              child: const Align(
                alignment: Alignment.topRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            SizedBox(
              width: 200.0,
              height: 20.0,
              child: Card(
                child: Text('SizedBox and Card'),
              ),
            ),
            Container(
              color: Colors.black,
              child: Transform(
                alignment: Alignment.topRight,
                transform: Matrix4.skewY(-0.1)..rotateZ(-math.pi / 12.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: const Color(0xFFE8581C),
                  child: const Text('Apartment for rent!'),
                ),
              ),
            ),
            SizedBox(
              width: 200.0,
              height: 60.0,
            ),
            Text('Deliver features faster'),
            Text('Craft beautiful UIs'),
            Stack(
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                ),
                Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.green,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.blue,
                ),
              ],
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.amber,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () => {},
              child: const Text('Gradient'),
            ),
          ],
        ),
      ),
    );
  }
}

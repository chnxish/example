import 'package:flutter/material.dart';

class SubpageOfWidgetsPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subpage 2'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

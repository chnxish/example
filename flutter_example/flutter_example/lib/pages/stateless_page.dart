import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  final String text;

  StatelessPage(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless'),
      ),
      body: Center(
        child: Text(this.text),
      ),
    );
  }
}

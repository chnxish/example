import 'dart:async';
import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  final String text;

  StatefulPage(this.text);

  @override
  _StatefulPageState createState() => _StatefulPageState(text);
}

class _StatefulPageState extends State<StatefulPage> {
  String text;

  _StatefulPageState(this.text);

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        text = 'Change value';
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}

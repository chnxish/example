// Show or Dismiss keyboard
import 'package:flutter/material.dart';

class SDKeyboardPage extends StatefulWidget {
  @override
  _SDKeyboardPageState createState() => _SDKeyboardPageState();
}

class _SDKeyboardPageState extends State<SDKeyboardPage> {
  FocusNode? focusNode;

  @override
  void initState() {
    super.initState();

    focusNode = FocusNode();
    focusNode?.addListener(() {
      print('Listener');
    });
  }

  @override
  void dispose() {
    focusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show or Dismiss Keyboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                autofocus: true,
                focusNode: focusNode,
              ),
            ),
            TextButton(
              onPressed: () {
                showKeyboard();
              },
              child: Text('Show Keyboard'),
            ),
            TextButton(
              onPressed: () {
                dismissKeyboard();
              },
              child: Text('Dismiss Keyboard'),
            ),
          ],
        ),
      ),
    );
  }

  void showKeyboard() {
    focusNode?.requestFocus();
  }

  void dismissKeyboard() {
    focusNode?.unfocus();
  }
}

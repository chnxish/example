import 'package:flutter/material.dart';
import 'package:flutter_example/routers/navigator_util.dart';

class MultilineAppbarPage extends StatefulWidget {
  @override
  _MultilineAppbarPageState createState() => _MultilineAppbarPageState();
}

class _MultilineAppbarPageState extends State<MultilineAppbarPage> {
  bool visibility = false;

  void changedVisibility() {
    setState(() {
      visibility = !visibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color colorStyle = Theme.of(context).primaryColor;
    final TextStyle? textStyle = Theme.of(context).textTheme.headline6;
    double availableWidth = MediaQuery.of(context).size.width - 160;
    availableWidth -= 32 * 3; // actions.length + leading.length = 3

    return Scaffold(
      body: Container(
        color: colorStyle,
        height: visibility ? 120.0 : 80.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_outlined,
                  ),
                  onPressed: () => NavigatorUtil.goBack(context),
                ),
                Expanded(
                  child: Text(
                    'Custom Appbar',
                    style: textStyle,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  onPressed: changedVisibility,
                  icon: Icon(Icons.extension_outlined),
                ),
              ],
            ),
            Visibility(
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                  ),
                ],
              ),
              visible: visibility,
            ),
          ],
        ),
      ),
    );
  }
}

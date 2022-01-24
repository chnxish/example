import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_example/theme/theme_model.dart';
import 'package:flutter_example/widgets/grouped_bar_chart.dart';

class ThemePage extends StatefulWidget {
  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeModel themeNotifier, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(themeNotifier.isDark ? 'Dark Mode' : 'Light Mode'),
            actions: <Widget>[
              IconButton(
                icon: Icon(themeNotifier.isDark
                    ? Icons.nightlight_round
                    : Icons.wb_sunny),
                onPressed: () {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                },
              ),
            ],
          ),
          body: GroupedBarChart.withRandomData(),
        );
      },
    );
  }
}

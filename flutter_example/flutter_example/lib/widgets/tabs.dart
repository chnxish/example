import 'dart:async';
import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;

const double _kTabHeight = 46.0;
const double _kTextAndIconTabHeight = 72.0;

enum TabBarIndicatorSize {
  tab,
  label,
}

class Tab extends StatelessWidget {
  final String? text;
  final Widget? child;
  final Widget? icon;

  const Tab({
    Key? key,
    this.text,
    this.icon,
    this.child,
  })  : assert(text != null || child != null || icon != null),
        assert(!(text != null && null != child)),
        super(key: key);

  Widget _buildLabelText() {
    return child ?? Text(text!, softWrap: false, overflow: TextOverflow.fade);
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));

    double height;
    Widget? label;
    if (icon == null) {
      height = _kTabHeight;
      label = _buildLabelText();
    } else if (text == null && child == null) {
      height = _kTabHeight;
      label = icon;
    } else {
      height = _kTextAndIconTabHeight;
      label = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: icon,
            margin: const EdgeInsets.only(bottom: 10.0),
          ),
          _buildLabelText(),
        ],
      );
    }

    return SizedBox(
      height: height,
      child: Center(
        child: label,
        widthFactor: 1.0,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('text', text, defaultValue: null));
    properties
        .add(DiagnosticsProperty<Widget>('icon', icon, defaultValue: null));
  }
}

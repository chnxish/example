# Dart语言和Flutter基础

  + [基础](#基础篇)

## 基础篇

***

  + 环境搭建

    - flutter第三方包的环境变量

      > flutter.dev -> flutter.cn

      > pub.dev -> pub.flutter-io.cn

      > // win直接配置到环境编辑即可，mac配置到bash_profile

      > export PUB_HOSTED_URL=https://pub.flutter-io.cn //国内⽤户需要设置

      > export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn //国内⽤户需要设置

  + 基本类型

    - Dart属于强类型语言，但可以用var来声明变量，Dart会自动推导出数据类型，var实际上是编译期的“语法糖”。dynamic表示动态类型，被编译后，实际是一个object类型，在编译期间不进行任何类型检查，而在运行期间进行类型检查。

    - Dart中number类型分为int和double。

    - Dart下只有bool型可以用于if等判断。

    - Dart中，switch支持String类型

  + 变量

    - Dart中所有基础类型、类等都继承Object，默认值是NULL，自带getter和setter，而如果是final和const的话，那么它只有一个getter方法。

    - Dart中final和const表示常量，其中const的值在编译期确定，final的值要到运行时才确定。

    - Dart下的数值，在作为字符串使用时，是需要显式指定的。

```dart
int i = 0;

// error
print('aaaa' + i);
// right
print('aaaa' + i.toString());
```

  + 方法

    - Dart没有public、private等修饰符，<kbd>_</kbd>下划线代表private，但是有@protected注释

```dart
AA ?? '999';  // 如果AA为空，返回999
AA ??= '999'; // 如果AA为空，给AA设置成999

getDetail(String username, reposName, {branch = 'master'}) {} // 参数默认和指定名称
getDetail('aaa', 'bbbb', branch: 'dev'); // 调用效果
```

```dart
class ModelA {
  String name;
  String tag;

  // 默认构造方法，赋值给name和tag
  ModelA(this.name, this.tag);

  // 返回一个空的ModelA
  ModelA.empty()

  // 返回一个设置了name的ModelA
  ModelA.forName(this.name);
}
```

  + Flutter

    - Flutter中支持async/await。

    - Flutter Widget：

      - Flutter中一切的显示都是Widget。我们可以通过修改数据，再用setState设置数据，Flutter会自动通过绑定的数据更新Widget。所以你需要做的就是实现Widget界面，并且和数据绑定起来。

      - Widget分为有状态和无状态两种：

        - 无状态StatelessWidget

          - build 返回控件

        - 有状态StatefulWidget

          - createState 创建state

          - initState 初始化，理论上只会初始化一次

          - dispose 销毁，只会调用一次

          - didChangeDependencies 在initState之后调用，此时可以获取其他State

```dart
import 'package:flutter/material.dart';

class DemoWidget extends StatelessWidget {
  final String text;

  DemoWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Text(text),
    );
  }
}
```

```dart
import 'dart:async';

import 'package:flutter/material.dart';

class DemoStateWidget extends StatefulWidget {
  final String text;

  DemoStateWidget(this.text);

  @override
  _DemoStateWidgetState createState() => _DemoStateWidgetState(text);
}

class _DemoStateWidgetState extends State<DemoStateWidget> {
  String text;
  
  _DemoStateWidgetState(this.text);

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
    return Container(
      child: Text(text),
    );
  }
}
```

  + Flutter布局

    - [Flutter布局](https://flutterchina.club/widgets/layout/)

| Type | Description |
| ---- | ----------- |
| Container | margin, padding, color, width, height, child |
| Padding | padding, child |
| Center | child |
| Align | alignment, child |
| SizedBox | width, height, child |
| Transform | alignment, transform, child |
| Row | children |
| Column | children |
| Stack | children |
| Expanded | flex, child |
| ListView | padding, children |
| ListView.builder | padding, itemCount, itemBuilder |
| ListView.separated | padding, itemCount, itemBuilder, separatorBuilder |
| GridView.count | primary, padding, crossAxisSpacing, mainAxisSpacing, crossAxisCount, children |

  + Flutter页面

| Type | Description |
| ---- | ----------- |
| MaterialApp | title, onGenerateRoute, debugShowCheckedModeBanner, theme, home |
| Scaffold | backgroundColor, appBar, body |
| AppBar | title |
| Text | "", style |
| TextField | obscureText, decoration |
| Image | image |
| TextButton | style, onPressed, child |

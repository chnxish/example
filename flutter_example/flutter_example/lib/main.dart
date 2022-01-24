import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:flutter_example/theme/custom_theme.dart';
import 'package:flutter_example/theme/theme_model.dart';
import 'package:flutter_example/pages/home_page.dart';
import 'package:flutter_example/routers/application.dart';
import 'package:flutter_example/routers/routes.dart';

void main() {
  // Hide StatusBar
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
    [SystemUiOverlay.bottom, SystemUiOverlay.top],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'flutter_example';

  // https://github.com/lukepighetti/fluro/blob/main/example/lib/components/app/app_component.dart
  MyApp() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer(builder: (context, ThemeModel themeNotifier, child) {
        return MaterialApp(
          title: _title,
          onGenerateRoute: Application.router.generator,
          debugShowCheckedModeBanner: false,
          // theme: ThemeData(
          //   brightness: Brightness.light,
          //   backgroundColor: Colors.white,
          // ),
          // darkTheme: ThemeData(
          //   brightness: Brightness.dark,
          //   backgroundColor: Colors.black,
          // ),
          theme: themeNotifier.isDark
              ? CustomTheme.darkTheme
              : CustomTheme.lightTheme,
          home: HomePage(),
        );
      }),
    );
  }
}

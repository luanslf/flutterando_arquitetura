import 'package:flutter/material.dart';
import 'package:flutterando_arquitetura/src/controllers/app_controller.dart';
import 'package:flutterando_arquitetura/src/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, isDark, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: isDark ? Brightness.dark : Brightness.light,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage(),
        );
      },
    );
  }
}

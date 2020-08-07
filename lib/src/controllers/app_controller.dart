import 'package:flutter/widgets.dart';
import 'package:flutterando_arquitetura/src/models/app_model.dart';

class AppController {

  static final AppController instance = AppController._();
  AppController._();

  final AppModel appModel = AppModel();
  bool get isDark => appModel.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => appModel.themeSwitch;

  changeTheme(bool value) {
    appModel.themeSwitch.value = value;
  }
}
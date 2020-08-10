import 'package:flutter/widgets.dart';
import 'package:flutterando_arquitetura/src/interfaces/local_storage_interface.dart';
import 'package:flutterando_arquitetura/src/services/shared_local_storage.dart';
import 'package:flutterando_arquitetura/src/view_models/switch_theme_view_model.dart';

class AppController {
  static final AppController instance = AppController._();
  AppController._() {
    switchThemeViewModel.init();
  }

  SwitchThemeViewModel switchThemeViewModel =
      SwitchThemeViewModel(storage: SharedLocalStorage());

  bool get isDark => switchThemeViewModel.appModel.themeSwitch.value;
 
  ValueNotifier<bool> get themeSwitch =>
      switchThemeViewModel.appModel.themeSwitch;

  final ILocalStorage storage = SharedLocalStorage();
}

import 'package:flutterando_arquitetura/src/interfaces/local_storage_interface.dart';
import 'package:flutterando_arquitetura/src/models/app_model.dart';

class SwitchThemeViewModel {

  final ILocalStorage storage;
  final AppModel appModel = AppModel();

  SwitchThemeViewModel({this.storage});

  Future init() async {
    await storage.get('isDark').then((value) {
      if (value != null) {
        appModel.themeSwitch.value = value;
      }
    });
  }

  changeTheme(bool value) {
    appModel.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}
import 'package:flutter/material.dart';
import 'package:flutterando_arquitetura/src/controllers/app_controller.dart';

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
        value: AppController.instance.isDark,
        onChanged: (value) {
          AppController.instance.changeTheme(value);
        },
      ),
    );
  }
}

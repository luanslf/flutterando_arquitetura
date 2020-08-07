import 'package:flutter/material.dart';
import 'package:flutterando_arquitetura/src/components/custom_switch.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: CustomSwitch(),
      ),
    );
  }
}

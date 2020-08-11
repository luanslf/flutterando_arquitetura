import 'package:flutter/material.dart';
import 'package:flutterando_arquitetura/src/components/custom_switch.dart';
import 'package:flutterando_arquitetura/src/controllers/home_controller.dart';
import 'package:flutterando_arquitetura/src/models/github_user_model.dart';
import 'package:flutterando_arquitetura/src/repositories/github_user_repository.dart';
import 'package:flutterando_arquitetura/src/services/http_http_client_service.dart';
import 'package:flutterando_arquitetura/src/view_models/github_user_view_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController(
    GithubUserViewModel(
      GithubUserRepository(
        HttpClientService(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: homeController.getUser,
        child: Icon(Icons.search),
      ),
      body: ListView(
        children: <Widget>[
          CustomSwitch(),
          ValueListenableBuilder<GithubUserModel>(
            valueListenable: homeController.user,
            builder: (context, user, child) {
              if (user == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Text(user.toString());
            },
          )
        ],
      ),
    );
  }
}

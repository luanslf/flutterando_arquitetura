import 'package:flutter/foundation.dart';
import 'package:flutterando_arquitetura/src/models/github_user_model.dart';
import 'package:flutterando_arquitetura/src/view_models/github_user_view_model.dart';

class HomeController {

  final GithubUserViewModel githubUserViewModel;

  HomeController(this.githubUserViewModel);

  ValueNotifier<GithubUserModel> get user => githubUserViewModel.githubUserModel;

  getUser() async {
    githubUserViewModel.fill();
  }
}
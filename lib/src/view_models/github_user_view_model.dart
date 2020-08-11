import 'package:flutter/material.dart';
import 'package:flutterando_arquitetura/src/interfaces/github_user_repository_interface.dart';
import 'package:flutterando_arquitetura/src/models/github_user_model.dart';

class GithubUserViewModel {

  final IGithubUserRepository githubUserRepository;

  final githubUserModel = ValueNotifier<GithubUserModel>(null);

  GithubUserViewModel(this.githubUserRepository);

  fill() async {
    githubUserModel.value = await githubUserRepository.get();
  }
}
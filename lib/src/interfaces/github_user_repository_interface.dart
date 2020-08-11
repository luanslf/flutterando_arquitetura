import 'package:flutterando_arquitetura/src/models/github_user_model.dart';

abstract class IGithubUserRepository {
  Future<GithubUserModel> get();
}
import 'package:flutterando_arquitetura/src/interfaces/github_user_repository_interface.dart';
import 'package:flutterando_arquitetura/src/interfaces/http_client_service_interface.dart';
import 'package:flutterando_arquitetura/src/models/github_user_model.dart';

class GithubUserRepository implements IGithubUserRepository {
  
  final IHttpClientService httpClient;

  GithubUserRepository(this.httpClient);
  
  @override
  Future<GithubUserModel> get() async {
    final json = await httpClient.getUser('https://api.github.com/users/luanslf');
    return GithubUserModel.fromJson(json);
  }

}
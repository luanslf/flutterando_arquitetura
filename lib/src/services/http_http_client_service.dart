import 'dart:convert';
import 'package:flutterando_arquitetura/src/interfaces/http_client_service_interface.dart';
import 'package:http/http.dart' as http;

class HttpClientService implements IHttpClientService {

  @override
  Future<Map<String, dynamic>> getUser(String url) async {
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    return data;
  }

}
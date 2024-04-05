import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/features/core/utils/app_constants.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Content-type': 'multipart/form-data',
      'Authorization': token,
    };
  }

  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<http.Response> postData(String uri, body, contentType) async {
    try {
      print(Uri.parse('$baseUrl$uri'));
      print(body);
      print(contentType);

      final http.Response response = await http.post(
        Uri.parse('$baseUrl$uri'),
        headers: <String, String>{
          'Content-Type': contentType,
        },
        body: body,
      );

      return response;
    } catch (e) {
      return http.Response(e.toString(), 1);
    }
  }
}

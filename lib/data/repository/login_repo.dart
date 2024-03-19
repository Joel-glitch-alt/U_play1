import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/core/utils/app_constants.dart';
import 'package:joel_s_application10/data/apiClient/api_client.dart';
import 'package:http/http.dart' as http;

class LoginRepo extends GetxService {
  final ApiClient apiClient;
  //Map<String, dynamic> body = {};
  LoginRepo({required this.apiClient});

  Future<http.Response> loginRepo(body) async {
    return await apiClient.postData(
        AppConstants.USER_LOGIN, body, 'multipart/form-data');
  }
}
//


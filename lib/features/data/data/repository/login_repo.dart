import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/features/data/data/apiClient/api_client.dart';

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


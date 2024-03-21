import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/apiClient/api_client.dart';
import 'package:http/http.dart' as http;

class SignUpPageRepo extends GetxService {
  final ApiClient apiClient;
  //Map<String, dynamic> body = {};
  SignUpPageRepo(
      {required this.apiClient,
      required signUpPageRepo,
      required registereRepo});

  Future<http.Response> signUPRepo(body) async {
    return await apiClient.postData(
        AppConstants.SUBSTRICTION_URL, body, 'multipart/form-data');
  }
}
//


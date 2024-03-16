import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/core/utils/app_constants.dart';
import 'package:joel_s_application10/data/apiClient/api_client.dart';

class CommonRepo extends GetxService {
  final ApiClient apiClient;
  CommonRepo({required this.apiClient});

  Future<Response> getCommonProductList() async {
    return await apiClient.getData(AppConstants.USER_REGISTER_URL);
  }
}

import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/apiClient/api_client.dart';
import 'package:http/http.dart' as http;

class MoneyZoneRepo extends GetxService {
  final ApiClient apiClient;

  MoneyZoneRepo({required this.apiClient});

  Future<http.Response> giftScreenRepo(body) async {
    return await apiClient.postData(
        AppConstants.MONEYZONE, body, 'multipart/form-data');
  }
}

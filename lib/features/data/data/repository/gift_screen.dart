import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/features/data/data/apiClient/api_client.dart';

class GiftZoneRepo extends GetxService {
  final ApiClient apiClient;

  GiftZoneRepo({required this.apiClient});

  Future<http.Response> giftScreenRepo(body) async {
    return await apiClient.postData(
        AppConstants.GIFTSZONE, body, 'multipart/form-data');
  }
}

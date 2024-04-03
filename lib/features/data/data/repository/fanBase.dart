import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/apiClient/api_client.dart';

class FanBaseRepo extends GetxService {
  final ApiClient apiClient;
  FanBaseRepo({required this.apiClient});

  Future<Response> getFanBaseRepo() async {
    return await apiClient.getData(AppConstants.FAN_BASE_URL);
  }
}

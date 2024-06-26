import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/apiClient/api_client.dart';

class SubArtistJudgeRepo extends GetxService {
  final ApiClient apiClient;
  SubArtistJudgeRepo({required this.apiClient});

  Future<Response> getArtistJudge() async {
    return await apiClient.getData(AppConstants.SUBSTRICTION_URL);
  }
}

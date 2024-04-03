import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/apiClient/api_client.dart';

class ProfileRepo extends GetxService {
  final ApiClient apiClient;
  ProfileRepo({required this.apiClient});

  Future<Response> getProfileRepo() async {
    return await apiClient.getData(AppConstants.PROFILE_PAGE_URL);
  }
}

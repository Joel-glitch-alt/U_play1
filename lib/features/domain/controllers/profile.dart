import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/profile_page_one.dart';
import 'package:dio/dio.dart'
    as dio; // Add an alias 'dio' to differentiate from GetX Response
import 'package:get/get_connect/http/src/response/response.dart'
    as get_response;
import 'package:joel_s_application10/features/presentation/presentation/loading_page_screen/models/loading_page_model.dart';

class ProfilePageOneController extends GetxController {
  Rx<LoadingPageModel> loadingPageModelObj = LoadingPageModel().obs;

  final ProfileRepo profileRepo;

  ProfilePageOneController({required this.profileRepo});

  @override
  void onInit() {
    const String PROFILE_PAGE_URL = AppConstants.PROFILE_PAGE_URL;
    getProfilePageUrl(PROFILE_PAGE_URL);
    super.onInit();
  }

  Future<void> getProfilePageUrl(String url) async {
    try {
      dio.Dio dioInstance = dio.Dio();
      dio.Response response = await dioInstance.get(url);
      if (response.statusCode == 200) {
        print('got data');
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (error) {
      print('Unexpected error: $error');
    }
  }
}

import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/profile_page_one.dart';
import 'package:dio/dio.dart' as dio; // Alias 'dio' for differentiation
import 'package:get/get_connect/http/src/response/response.dart'
    as get_response;
import 'package:joel_s_application10/features/presentation/presentation/loading_page_screen/models/loading_page_model.dart';
import 'package:joel_s_application10/features/presentation/presentation/profile_page_one_screen/models/profile.dart';
import 'package:joel_s_application10/features/presentation/presentation/register/model/login_user.dart';

class ProfilePageOneController extends GetxController {
  final RxList<UserModell> users = <UserModell>[].obs;

  final ProfileRepo profileRepo;

  ProfilePageOneController({required this.profileRepo});

  @override
  void onInit() {
    // Ensure that AppConstants.USER_REGISTER_URL is defined and correct
    const String PROFILE_PAGE_URL = AppConstants.USER_REGISTER_URL;
    getProfilePageUrl(PROFILE_PAGE_URL);
    super.onInit();
  }

  Future<void> getProfilePageUrl(String url) async {
    try {
      dio.Dio dioInstance = dio.Dio();
      dio.Response response = await dioInstance.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data;
        // Convert UserModel instances to UserModell instances
        final List<UserModell> userList =
            jsonList.map((e) => UserModell.fromJson(e)).toList();
        users.value = userList;
        print('got data');
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (error) {
      // Handle errors more explicitly
      print('Unexpected error: $error');
    }
  }
}

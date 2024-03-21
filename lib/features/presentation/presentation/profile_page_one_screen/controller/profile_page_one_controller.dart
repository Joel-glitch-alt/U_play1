import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/presentation/presentation/profile_page_one_screen/models/profile_page_one_model.dart';
import 'package:joel_s_application10/features/presentation/presentation/loading_page_screen/models/loading_page_model.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/features/presentation/presentation/profile_page_one_screen/repo/repo.dart';

/// A controller class for the ProfilePageOneScreen.
///
/// This class manages the state of the ProfilePageOneScreen, including the
/// current profilePageOneModelObj
class ProfilePageOneController extends GetxController {
  //Rx<ProfilePageOneModel> profilePageOneModelObj = ProfilePageOneModel().obs;

  //Rx<LoadingPageModel> loadingPageModelObj = LoadingPageModel().obs;

  final ProfileRepo profileRepo;
  ProfilePageOneController({required this.profileRepo});

  @override
  void onInit() {
    const String PROFILE_PAGE_URL = AppConstants.PROFILE_PAGE_URL;
    getProfilePageUrl(PROFILE_PAGE_URL);
    super.onInit();
  }

  //
  Future<void> getProfilePageUrl(String url) async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print('got data');
        // Parse the response and update the loadingPageModelObj if needed
        // For example: loadingPageModelObj.value = LoadingPageModel.fromJson(json.decode(response.body));
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (error) {
      print('Unexpected error: $error');
    }
  }
//
}

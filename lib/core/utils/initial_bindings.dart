import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/core/utils/app_constants.dart';
import 'package:joel_s_application10/data/apiClient/api_client.dart';
import 'package:joel_s_application10/data/repository/common_repos.dart';
import 'package:joel_s_application10/presentation/fanbase_screen/controller/fanbase_controller.dart';
import 'package:joel_s_application10/presentation/fanbase_screen/repo/repo.dart';
import 'package:joel_s_application10/presentation/profile_page_one_screen/controller/profile_page_one_controller.dart';
import 'package:joel_s_application10/presentation/profile_page_one_screen/repo/repo.dart';
import 'package:joel_s_application10/presentation/register/controller/register.dart';
import 'package:joel_s_application10/presentation/register/repo/repo.dart';
import 'package:joel_s_application10/presentation/subscription_screen/controller/subscription_controller.dart';
import 'package:joel_s_application10/presentation/subscription_screen/repo/sub_repo.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Get.put(PrefUtils());
    //This is for ApiClient
    Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

    //This is for our Repositories
    Get.lazyPut(() => RegistereRepo(apiClient: Get.find()));
    Get.lazyPut(() => CommonRepo(apiClient: Get.find()));
    Get.lazyPut(() => ProfileRepo(apiClient: Get.find()));
    Get.lazyPut(() => subRepo(apiClient: Get.find()));
    Get.lazyPut(() => FanBaseRepo(apiClient: Get.find()));

    //Register Controller
    Get.lazyPut(() => RegisterController(commonRepo: Get.find()));
    Get.lazyPut(() => ProfilePageOneController(profileRepo: Get.find()));
    Get.lazyPut(() => FanbaseController(fanBaseRepo: Get.find()));
    Get.lazyPut(() => SubscriptionController(commonRepo: Get.find()));
    Get.lazyPut(() => RegisterController(commonRepo: Get.find()));

    //
    ///Connectivity connectivity = Connectivity();
    //
    ///Get.put(NetworkInfo(connectivity));
  }
}

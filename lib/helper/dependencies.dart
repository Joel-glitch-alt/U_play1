import 'package:http/http.dart';
import 'package:joel_s_application10/controllers/login_controller.dart';
import 'package:joel_s_application10/controllers/register.dart';
import 'package:joel_s_application10/controllers/subscription.dart';
import 'package:joel_s_application10/controllers/voting.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/data/apiClient/api_client.dart';
import 'package:joel_s_application10/data/repository/login_repo.dart';
import 'package:joel_s_application10/data/repository/register.dart';
import 'package:joel_s_application10/data/repository/subscription.dart';
import 'package:joel_s_application10/data/repository/voting.dart';
import 'package:joel_s_application10/presentation/fanbase_screen/controller/fanbase_controller.dart';
import 'package:joel_s_application10/presentation/fanbase_screen/repo/repo.dart';
import 'package:joel_s_application10/presentation/profile_page_one_screen/controller/profile_page_one_controller.dart';
import 'package:joel_s_application10/presentation/profile_page_one_screen/repo/repo.dart';

import '../core/utils/app_constants.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //Repo
  Get.lazyPut(() => RegistereRepo(apiClient: Get.find()));
  //Get.lazyPut(() => CommonRepo(apiClient: Get.find()));
  Get.lazyPut(() => ProfileRepo(apiClient: Get.find()));
  Get.lazyPut(() => subRepo(apiClient: Get.find()));
  Get.lazyPut(() => FanBaseRepo(apiClient: Get.find()));

  Get.lazyPut(() => LoginRepo(apiClient: Get.find()));
  Get.lazyPut(() => VotingRepo(apiClient: Get.find()));
  // Get.lazyPut(() => SignUpPageRepo(apiClient: Get.find()));

  //Controllers
  Get.lazyPut(
      () => LoginController(loginRepo: Get.find(), endpoint: "account/login/"));
  //Get.lazyPut(() => RegisterController(commonRepo: Get.find()));
  Get.lazyPut(() => ProfilePageOneController(profileRepo: Get.find()));
  Get.lazyPut(() => FanbaseController(fanBaseRepo: Get.find()));
  Get.lazyPut(() => SubscriptionController(registereRepo: Get.find()));
  Get.lazyPut(() => RegisterController(registereRepo: Get.find()));
  Get.lazyPut(() => VotingsController(votingRepo: Get.find()));
  //Get.lazyPut(() => SignUpPageRepo(registereRepo: Get.find()));
}

//
 //Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

    //This is for our Repositories

    //Register Controller
   
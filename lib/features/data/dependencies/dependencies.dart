import 'package:http/http.dart';
import 'package:joel_s_application10/features/domain/controllers/gift_zone.dart';
import 'package:joel_s_application10/features/domain/controllers/money_zone.dart';
import 'package:joel_s_application10/features/domain/controllers/login_controller.dart';
import 'package:joel_s_application10/features/domain/controllers/profile_page.dart';
import 'package:joel_s_application10/features/domain/controllers/register.dart';
import 'package:joel_s_application10/features/domain/controllers/subscription.dart';
import 'package:joel_s_application10/features/domain/controllers/voting.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/data/data/apiClient/api_client.dart';
import 'package:joel_s_application10/features/data/data/repository/gift_screen.dart';
import 'package:joel_s_application10/features/data/data/repository/login_repo.dart';
import 'package:joel_s_application10/features/data/data/repository/money_zone.dart';
import 'package:joel_s_application10/features/data/data/repository/profile_page.dart';
import 'package:joel_s_application10/features/data/data/repository/register.dart';
import 'package:joel_s_application10/features/data/data/repository/subscription.dart';
import 'package:joel_s_application10/features/data/data/repository/voting.dart';
import 'package:joel_s_application10/features/presentation/presentation/fanbase_screen/controller/fanbase_controller.dart';
import 'package:joel_s_application10/features/presentation/presentation/fanbase_screen/repo/repo.dart';
import 'package:joel_s_application10/features/presentation/presentation/profile_page_one_screen/controller/profile_page_one_controller.dart';
import 'package:joel_s_application10/features/presentation/presentation/profile_page_one_screen/repo/repo.dart';

import '../../core/utils/app_constants.dart';

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
  Get.lazyPut(() => ProfilePageRepo(apiClient: Get.find()));
  Get.lazyPut(() => GiftZoneRepo(apiClient: Get.find()));
  Get.lazyPut(() => MoneyZoneRepo(apiClient: Get.find()));
  //Get.lazyPut(() => VotingRepo(apiClient: Get.find()));
  // Get.lazyPut(() => SignUpPageRepo(apiClient: Get.find()));

  //Controllers
  Get.lazyPut(
      () => LoginController(loginRepo: Get.find(), endpoint: "account/login/"));
  Get.lazyPut(() => ProfilePageOneController(profileRepo: Get.find()));
  Get.lazyPut(() => FanbaseController(fanBaseRepo: Get.find()));
  Get.lazyPut(() => SubscriptionController(registereRepo: Get.find()));
  Get.lazyPut(() => RegisterController(registereRepo: Get.find()));
  Get.lazyPut(() => VotingsController(votingRepo: Get.find()));
  Get.lazyPut(() => ProfilePageController(profilePageRepo: Get.find()));
  Get.lazyPut(() => GiftZoneController(giftZoneRepo: Get.find()));
  Get.lazyPut(() => MoneyZoneController(moneyZoneRepo: Get.find()));
  //Get.lazyPut(() => SignUpPageRepo(registereRepo: Get.find()));
}

//
 //Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

    //This is for our Repositories

    //Register Controller
   
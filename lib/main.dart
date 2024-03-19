import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joel_s_application10/core/utils/app_constants.dart';
import 'package:joel_s_application10/data/apiClient/api_client.dart';
import 'package:joel_s_application10/presentation/fanbase_screen/controller/fanbase_controller.dart';
import 'package:joel_s_application10/presentation/fanbase_screen/fanbase_screen.dart';
import 'package:joel_s_application10/presentation/fanbase_screen/repo/repo.dart';
import 'package:joel_s_application10/presentation/get_started_screen/get_started_screen.dart';
import 'package:joel_s_application10/presentation/login_page_screen/login_page_screen.dart';
import 'package:joel_s_application10/presentation/profile_page_one_screen/controller/profile_page_one_controller.dart';
import 'package:joel_s_application10/presentation/profile_page_one_screen/profile_page_one_screen.dart';
import 'package:joel_s_application10/presentation/profile_page_one_screen/repo/repo.dart';
import 'package:joel_s_application10/presentation/register/controller/register.dart';
import 'package:joel_s_application10/presentation/register/registerLogin.dart';
import 'package:joel_s_application10/presentation/register/repo/repo.dart';
import 'package:joel_s_application10/presentation/voting_screen/voting_screen.dart';
// import 'core/utils/initial_bindings.dart' as dep;
import 'helper/dependencies.dart' as dep;
import 'core/app_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //
//   Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
//   //Repo
//   Get.lazyPut(() => FanBaseRepo(apiClient: Get.find()));
//   Get.lazyPut(() => RegistereRepo(apiClient: Get.find()));
//   Get.lazyPut(() => ProfileRepo(apiClient: Get.find()));

// //Controllers
//   Get.lazyPut(() => FanbaseController(fanBaseRepo: Get.find()));
//   Get.lazyPut(() => RegisterController(commonRepo: Get.find()));
//   Get.lazyPut(() => ProfilePageOneController(profileRepo: Get.find()));

  await dep.init();
  //
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Get.find<RegisterController>().sendPostRequest();
    //
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          translations: AppLocalization(),
          locale: Get.deviceLocale, //for setting localization strings
          fallbackLocale: Locale('en', 'US'),
          title: 'joel_s_application10',
          // initialBinding: InitialBindings(),
          initialRoute: AppRoutes.initial,
          //initialRoute,
          getPages: AppRoutes.pages,
          home: VotingScreen()
          //GetStartedScreen()
          //FanbaseScreen()

          // RegisterOtp(
          //   productTypesList: [
          //     {"id": 1, "label": "Artiste"},
          //     {"id": 2, "label": "Judge"},
          //   ],
          //   isChecked: true,
          //   category: '',
          // ),

          //FanbaseScreen(),
          //ProfilePageOneScreen(),
          //RegisterOtp(),
          //SubscriptionScreen(),
          //Users
          );

      //
    });
  }
}

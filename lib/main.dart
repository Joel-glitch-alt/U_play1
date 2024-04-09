import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joel_s_application10/features/presentation/presentation/collection_dialog/collection_dialog.dart';
import 'package:joel_s_application10/features/presentation/presentation/contestants_page/contestants_page.dart';
import 'package:joel_s_application10/features/presentation/presentation/fanbase_screen/fanbase_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/forget_Password/forget_password.dart';
import 'package:joel_s_application10/features/presentation/presentation/gift_screen/gift_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/home_page/home_page.dart';
import 'package:joel_s_application10/features/presentation/presentation/home_page/media.dart';
import 'package:joel_s_application10/features/presentation/presentation/login_page_screen/login_page_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/profile_page_one_screen/profile_page_one_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/tabs_screen/tabs_screen.dart';
// import 'core/utils/initial_bindings.dart' as dep;
import 'features/data/dependencies/dependencies.dart' as dep;
import 'features/core/app_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //
  // Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
//   //Repo
//   Get.lazyPut(() => FanBaseRepo(apiClient: Get.find()));
//   Get.lazyPut(() => RegistereRepo(apiClient: Get.find()));
//   Get.lazyPut(() => ProfileRepo(apiClient: Get.find()));
  //Get.lazyPut(() => ProfilePageRepo(apiClient: Get.find()));

// //Controllers
//   Get.lazyPut(() => FanbaseController(fanBaseRepo: Get.find()));
//   Get.lazyPut(() => RegisterController(commonRepo: Get.find()));
//   Get.lazyPut(() => ProfilePageOneController(profileRepo: Get.find()));
  // Get.lazyPut(() => ProfilePageController(profilePageRepo: Get.find()));

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
          title: 'U PLAY',
          // initialBinding: InitialBindings(),

          initialRoute: AppRoutes.initialRoute,

          //initial,
          //initialRoute,
          getPages: AppRoutes.pages
          //home: LoginPageScreen(),

          /*MediaPlayer(
          videoUrl: 'https://www.youtube.com/watch?v=n1Y4HROvFME',
        ),*/
          //HomePage()
          //VotingScreen()
          //ContestantsPage()
          //TabsScreen()
          //GiftScreen()
          //FanbaseScreen()

          // ProfilePageOneScreen()
          // HomePage()

          //
          //GiftScreen(),
          //ProfilePageScreen()
          //GetStartedScreen()

          // RegisterOtp(
          //   productTypesList: [
          //     {"id": 1, "label": "Artiste"},
          //     {"id": 2, "label": "Judge"},
          //   ],
          //   isChecked: true,
          //   category: '',
          // ),

          //ProfilePageOneScreen(),
          //RegisterOtp(),
          //SubscriptionScreen(),

          );

      //
    });
  }
}

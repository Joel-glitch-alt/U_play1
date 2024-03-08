import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joel_s_application10/presentation/register/controller/register.dart';
import 'package:joel_s_application10/presentation/register/registerLogin.dart';
import 'package:joel_s_application10/presentation/signup_page_screen/controller/signup_page_controller.dart';

import 'core/app_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.put(SignupPageController()); //calling Controllers...
  await Get.put(LoginController()); //calling Controllers...
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
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: 'joel_s_application10',
        // initialBinding: InitialBindings(),
        //initialRoute: AppRoutes.initialRoute,
        // getPages: AppRoutes.pages,
        home: RegisterOtp(),
      );
    });
  }
}

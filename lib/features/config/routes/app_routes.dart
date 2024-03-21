import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/presentation/presentation/loading_page_screen/loading_page_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/loading_page_screen/binding/loading_page_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/get_started_introduction_screen/get_started_introduction_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/get_started_introduction_screen/binding/get_started_introduction_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/get_started_subscription_screen/get_started_subscription_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/get_started_subscription_screen/binding/get_started_subscription_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/get_started_screen/get_started_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/get_started_screen/binding/get_started_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/register/registerLogin.dart';
import 'package:joel_s_application10/features/presentation/presentation/signup_page_screen/signup_page_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/signup_page_screen/binding/signup_page_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/login_page_screen/login_page_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/login_page_screen/binding/login_page_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/profile_page_one_screen/profile_page_one_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/profile_page_one_screen/binding/profile_page_one_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/subscription_screen/subscription_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/subscription_screen/binding/subscription_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/voting_screen/voting_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/voting_screen/binding/voting_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/profile_page_screen/binding/profile_page_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/tabs_screen/tabs_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/tabs_screen/binding/tabs_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/home_container_screen/home_container_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/fanbase_screen/fanbase_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/fanbase_screen/binding/fanbase_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/gift_screen/gift_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/gift_screen/binding/gift_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/gift_available_rewards_screen/gift_available_rewards_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/gift_available_rewards_screen/binding/gift_available_rewards_binding.dart';
import 'package:joel_s_application10/features/presentation/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String initial = '/';
  static const String loadingPageScreen = '/loading_page_screen';

  static const String getStartedIntroductionScreen =
      '/get_started_introduction_screen';

  static const String getStartedSubscriptionScreen =
      '/get_started_subscription_screen';

  static const String getStartedScreen = '/get_started_screen';

  static const String signupPageScreen = '/signup_page_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String profilePageOneScreen = '/profile_page_one_screen';

  static const String subscriptionScreen = '/subscription_screen';

  static const String votingScreen = '/voting_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String tabsScreen = '/tabs_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String contestantsPage = '/contestants_page';

  static const String fanbaseScreen = '/fanbase_screen';

  static const String giftScreen = '/gift_screen';

  static const String giftAvailableRewardsScreen =
      '/gift_available_rewards_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: '/',
      page: () => RegisterOtp(
        productTypesList: [
          {"id": 1, "label": "Artiste"},
          {"id": 2, "label": "Judge"},
        ],
        isChecked: true,
        category: '',
      ),
      // bindings: [
      //   LoadingPageBinding(),
      // ],
    ),
    GetPage(
      name: loadingPageScreen,
      page: () => LoadingPageScreen(),
      // bindings: [
      //   LoadingPageBinding(),
      // ],
    ),
    GetPage(
      name: getStartedIntroductionScreen,
      page: () => GetStartedIntroductionScreen(),
      // bindings: [
      // GetStartedIntroductionBinding(),
      // ],
      ///SubscriptionScreen
    ),
    GetPage(
      name: getStartedSubscriptionScreen,
      page: () => GetStartedSubscriptionScreen(),
      // bindings: [
      //   GetStartedSubscriptionBinding(),
      // ],
    ),
    GetPage(
      name: getStartedScreen,
      page: () => GetStartedScreen(),
      // bindings: [
      //   GetStartedBinding(),
      // ],
    ),
    GetPage(
      name: signupPageScreen,
      page: () => SignupPageScreen(),
      // bindings: [
      //   SignupPageBinding(),
      // ],
    ),
    GetPage(
      name: loginPageScreen,
      page: () => LoginPageScreen(),
      // bindings: [
      //   LoginPageBinding(),
      // ],
    ),
    GetPage(
      name: profilePageOneScreen,
      page: () => ProfilePageOneScreen(),
      // bindings: [
      //   //ProfilePageOneBinding(),
      // ],
    ),
    // GetPage(
    //   name: subscriptionScreen,
    //   page: () => SubscriptionScreen(),
    //   // bindings: [
    //   //   SubscriptionBinding(),
    //   // ],
    // ),
    GetPage(
      name: subscriptionScreen,
      page: () => SubscriptionScreen(
        textEditingController:
            TextEditingController(), // Provide a TextEditingController here
        onTextChanged: (text) {
          // Handle text changed event
        },
        onArtistsPressed: () {
          // Handle artists button pressed event
        },
        onJudgePressed: () {
          // Handle judge button pressed event
        },
      ),
    ),
    GetPage(
      name: votingScreen,
      page: () => VotingScreen(),
      // bindings: [
      //   VotingBinding(),
      // ],
    ),
    GetPage(
      name: profilePageScreen,
      page: () => ProfilePageScreen(),
      // bindings: [
      //   ProfilePageBinding(),
      // ],
    ),
    GetPage(
      name: tabsScreen,
      page: () => TabsScreen(),
      // bindings: [
      //   TabsBinding(),
      // ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      // bindings: [
      //   HomeContainerBinding(),
      // ],
    ),
    GetPage(
      name: fanbaseScreen,
      page: () => FanbaseScreen(),
      // bindings: [
      //   FanbaseBinding(),
      // ],
    ),
    GetPage(
      name: giftScreen,
      page: () => GiftScreen(),
      // bindings: [
      //   GiftBinding(),
      // ],
    ),
    GetPage(
      name: giftAvailableRewardsScreen,
      page: () => GiftAvailableRewardsScreen(),
      // bindings: [
      //   GiftAvailableRewardsBinding(),
      // ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      // bindings: [
      //   AppNavigationBinding(),
      // ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoadingPageScreen(),
      // bindings: [
      //   LoadingPageBinding(),
      // ],
    )
  ];
}

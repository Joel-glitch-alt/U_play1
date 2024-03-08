import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Loading page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loadingPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Get Started-Introduction".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.getStartedIntroductionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Get Started-subscription".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.getStartedSubscriptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Get Started".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.getStartedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signup-page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login-page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile-page One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profilePageOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Subscription".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subscriptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Voting".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.votingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile-page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profilePageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tabs".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tabsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Fanbase".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fanbaseScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gift".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.giftScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gift - Available rewards".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.giftAvailableRewardsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}

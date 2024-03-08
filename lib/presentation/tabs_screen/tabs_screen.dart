import 'controller/tabs_controller.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/home_page/home_page.dart';
import 'package:joel_s_application10/widgets/custom_bottom_bar.dart';
import 'package:joel_s_application10/widgets/custom_outlined_button.dart';
import 'package:joel_s_application10/presentation/collection_dialog/collection_dialog.dart';
import 'package:joel_s_application10/presentation/collection_dialog/controller/collection_controller.dart';

class TabsScreen extends GetWidget<TabsController> {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTabsHome(),
                  SizedBox(height: 33.v),
                  _buildTabsContestants(),
                  SizedBox(height: 33.v),
                  _buildTabsFanbase(),
                  SizedBox(height: 33.v),
                  _buildTabsGifts(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildTabsHome() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.gradientGrayToWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomOutlinedButton(
              width: 140.h,
              text: "lbl_home".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(1.h)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCalculator,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              buttonStyle: CustomButtonStyles.outlinePink,
              buttonTextStyle: CustomTextStyles.titleSmallPink300),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsBlueGray400,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgUser();
              }),
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUp,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgThumbsUp();
              }),
          CustomImageView(
              imagePath: ImageConstant.imgInfo,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgInfo();
              })
        ]));
  }

  /// Section Widget
  Widget _buildTabsContestants() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.gradientGrayToWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame46,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgImage();
              }),
          Container(
              padding: EdgeInsets.fromLTRB(5.h, 9.v, 5.h, 8.v),
              decoration: AppDecoration.outlinePink,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgGroup9,
                    height: 20.v,
                    width: 31.h),
                Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text("lbl_contestants".tr,
                        style: CustomTextStyles.titleSmallPink300))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgUser1();
              }),
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUp,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgThumbsUp1();
              }),
          CustomImageView(
              imagePath: ImageConstant.imgInfo,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgInfo1();
              })
        ]));
  }

  /// Section Widget
  Widget _buildTabsFanbase() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.gradientGrayToWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame46,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgImage1();
              }),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsBlueGray400,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomOutlinedButton(
              width: 140.h,
              text: "lbl_fan_base".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 20.v,
                      width: 28.h)),
              buttonStyle: CustomButtonStyles.outlinePink,
              buttonTextStyle: CustomTextStyles.titleSmallPink300),
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUp,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgThumbsUp2();
              }),
          CustomImageView(
              imagePath: ImageConstant.imgInfo,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgInfo2();
              })
        ]));
  }

  /// Section Widget
  Widget _buildTabsGifts() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.gradientGrayToWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame46,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgImage2();
              }),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsBlueGray400,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgUser2();
              }),
          CustomOutlinedButton(
              width: 140.h,
              text: "lbl_gifts".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsupPink300,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              buttonStyle: CustomButtonStyles.outlinePink,
              buttonTextStyle: CustomTextStyles.titleSmallPink300),
          CustomImageView(
              imagePath: ImageConstant.imgInfo,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                onTapImgInfo3();
              })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the fanbaseScreen when the action is triggered.
  onTapImgUser() {
    Get.toNamed(
      AppRoutes.fanbaseScreen,
    );
  }

  /// Navigates to the giftScreen when the action is triggered.
  onTapImgThumbsUp() {
    Get.toNamed(
      AppRoutes.giftScreen,
    );
  }

  /// Displays a dialog with the [CollectionDialog] content.
  onTapImgInfo() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: CollectionDialog(
        Get.put(
          CollectionController(),
        ),
      ),
    ));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgImage() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  /// Navigates to the fanbaseScreen when the action is triggered.
  onTapImgUser1() {
    Get.toNamed(
      AppRoutes.fanbaseScreen,
    );
  }

  /// Navigates to the giftScreen when the action is triggered.
  onTapImgThumbsUp1() {
    Get.toNamed(
      AppRoutes.giftScreen,
    );
  }

  /// Displays a dialog with the [CollectionDialog] content.
  onTapImgInfo1() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: CollectionDialog(
        Get.put(
          CollectionController(),
        ),
      ),
    ));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgImage1() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  /// Navigates to the giftScreen when the action is triggered.
  onTapImgThumbsUp2() {
    Get.toNamed(
      AppRoutes.giftScreen,
    );
  }

  /// Displays a dialog with the [CollectionDialog] content.
  onTapImgInfo2() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: CollectionDialog(
        Get.put(
          CollectionController(),
        ),
      ),
    ));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgImage2() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  /// Navigates to the fanbaseScreen when the action is triggered.
  onTapImgUser2() {
    Get.toNamed(
      AppRoutes.fanbaseScreen,
    );
  }

  /// Displays a dialog with the [CollectionDialog] content.
  onTapImgInfo3() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: CollectionDialog(
        Get.put(
          CollectionController(),
        ),
      ),
    ));
  }
}

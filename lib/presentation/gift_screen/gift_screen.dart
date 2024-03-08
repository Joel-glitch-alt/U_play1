import 'controller/gift_controller.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/home_page/home_page.dart';
import 'package:joel_s_application10/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class GiftScreen extends GetWidget<GiftController> {
  const GiftScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 809.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                height: 809.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 809.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0, 0),
                            end: Alignment(1, 1),
                            colors: [
                              appTheme.lightBlueA700.withOpacity(0.65),
                              theme.colorScheme.primary.withOpacity(0.65),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(25.h, 26.v, 25.h, 224.v),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildFrameFifty(),
                            Spacer(),
                            _buildForm3(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup2,
                height: 753.v,
                width: 390.h,
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFifty() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 5.h),
          child: _buildForm(
            giftZone: "lbl_money_zone".tr,
            pointsCounter: "lbl_points_500".tr,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: _buildForm(
            giftZone: "lbl_gift_zone".tr,
            pointsCounter: "lbl_points_500".tr,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildForm3() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 70.h,
        vertical: 75.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpPink3001,
            height: 93.v,
            width: 82.h,
          ),
          SizedBox(height: 1.v),
          SizedBox(
            width: 198.h,
            child: Text(
              "msg_there_is_no_reward".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Container(
            width: 192.h,
            margin: EdgeInsets.only(
              left: 3.h,
              right: 2.h,
            ),
            child: Text(
              "msg_earn_more_points".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildForm({
    required String giftZone,
    required String pointsCounter,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 41.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                giftZone,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                pointsCounter,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.whiteA700.withOpacity(0.2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
}

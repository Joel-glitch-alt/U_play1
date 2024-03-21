import 'widgets/rewardnotification_item_widget.dart';
import 'controller/gift_available_rewards_controller.dart';
import 'models/rewardnotification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/presentation/home_page/home_page.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class GiftAvailableRewardsScreen
    extends GetWidget<GiftAvailableRewardsController> {
  const GiftAvailableRewardsScreen({Key? key})
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
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25.h, 26.v, 25.h, 94.v),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildMoneyZone(),
                            SizedBox(height: 10.v),
                            _buildRewardNotification(),
                            Spacer(
                              flex: 5,
                            ),
                            Spacer(
                              flex: 6,
                            ),
                            Spacer(
                              flex: 10,
                            ),
                            Spacer(
                              flex: 10,
                            ),
                            Spacer(
                              flex: 14,
                            ),
                            Spacer(
                              flex: 14,
                            ),
                            Spacer(
                              flex: 18,
                            ),
                            Spacer(
                              flex: 19,
                            ),
                            SizedBox(height: 34.v),
                            _buildForm1(
                              youHaveAnMZReward: "msg_you_have_an_mz_reward".tr,
                              price: "msg_you_have_earned".tr,
                              cashout: "lbl_cashout".tr,
                            ),
                            SizedBox(height: 45.v),
                            _buildForm1(
                              youHaveAnMZReward: "msg_you_have_an_mz_reward".tr,
                              price: "msg_you_have_earned".tr,
                              cashout: "lbl_cashout".tr,
                            ),
                            _buildForm1(
                              youHaveAnMZReward: "msg_you_have_a_gz_reward".tr,
                              price: "msg_you_have_can_redeem".tr,
                              cashout: "lbl_redeem".tr,
                            ),
                            _buildForm1(
                              youHaveAnMZReward: "msg_you_have_a_gz_reward".tr,
                              price: "msg_you_have_can_redeem".tr,
                              cashout: "lbl_redeem".tr,
                            ),
                            _buildForm1(
                              youHaveAnMZReward: "msg_you_have_a_gz_reward".tr,
                              price: "msg_you_have_can_redeem".tr,
                              cashout: "lbl_redeem".tr,
                            ),
                            _buildForm1(
                              youHaveAnMZReward: "msg_you_have_a_gz_reward".tr,
                              price: "msg_you_have_can_redeem".tr,
                              cashout: "lbl_redeem".tr,
                            ),
                            _buildForm1(
                              youHaveAnMZReward: "msg_you_have_a_gz_reward".tr,
                              price: "msg_you_have_can_redeem".tr,
                              cashout: "lbl_redeem".tr,
                            ),
                            _buildForm1(
                              youHaveAnMZReward: "msg_you_have_a_gz_reward".tr,
                              price: "msg_you_have_can_redeem".tr,
                              cashout: "lbl_redeem".tr,
                            ),
                            _buildForm1(
                              youHaveAnMZReward: "msg_you_have_a_gz_reward".tr,
                              price: "msg_you_have_can_redeem".tr,
                              cashout: "lbl_redeem".tr,
                            ),
                            _buildForm1(
                              youHaveAnMZReward: "msg_you_have_a_gz_reward".tr,
                              price: "msg_you_have_can_redeem".tr,
                              cashout: "lbl_redeem".tr,
                            ),
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
  Widget _buildMoneyZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 5.h),
          child: _buildForm(
            giftZone: "lbl_money_zone".tr,
            pointsCounter: "lbl_points_3000".tr,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: _buildForm(
            giftZone: "lbl_gift_zone".tr,
            pointsCounter: "lbl_points_5000".tr,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRewardNotification() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: controller.giftAvailableRewardsModelObj.value
            .rewardnotificationItemList.value.length,
        itemBuilder: (context, index) {
          RewardnotificationItemModel model = controller
              .giftAvailableRewardsModelObj
              .value
              .rewardnotificationItemList
              .value[index];
          return RewardnotificationItemWidget(
            model,
          );
        },
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

  /// Common widget
  Widget _buildForm1({
    required String youHaveAnMZReward,
    required String price,
    required String cashout,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup12,
            height: 1.v,
            width: 72.h,
            margin: EdgeInsets.only(top: 22.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              right: 10.h,
            ),
            child: Column(
              children: [
                Text(
                  youHaveAnMZReward,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
                SizedBox(height: 85.v),
                Text(
                  price,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.whiteA700.withOpacity(0.2),
                  ),
                ),
                SizedBox(height: 124.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32.h),
                  padding: EdgeInsets.symmetric(horizontal: 48.h),
                  decoration: AppDecoration.fillLightBlueA,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.v),
                      Text(
                        cashout,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: appTheme.gray50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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

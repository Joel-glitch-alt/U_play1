import '../controller/gift_available_rewards_controller.dart';
import '../models/rewardnotification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class RewardnotificationItemWidget extends StatelessWidget {
  RewardnotificationItemWidget(
    this.rewardnotificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RewardnotificationItemModel rewardnotificationItemModelObj;

  var controller = Get.find<GiftAvailableRewardsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpPink3002,
            height: 71.v,
            width: 72.h,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: Column(
              children: [
                Obx(
                  () => Text(
                    rewardnotificationItemModelObj.rewardText!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 187.h,
                  child: Obx(
                    () => Text(
                      rewardnotificationItemModelObj.earnedAmountText!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                CustomElevatedButton(
                  height: 28.v,
                  width: 150.h,
                  text: "lbl_cashout".tr,
                  buttonStyle: CustomButtonStyles.fillLightBlueA,
                  buttonTextStyle: theme.textTheme.labelLarge!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'controller/voting_controller.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/widgets/custom_checkbox_button.dart';
import 'package:joel_s_application10/widgets/custom_elevated_button.dart';
import 'package:joel_s_application10/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class VotingScreen extends GetWidget<VotingController> {
  const VotingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black9004c.withOpacity(0.02),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: _buildFrameFiftyFour(),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFiftyFour() {
    return Container(
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        decoration: AppDecoration.fillErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup2,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Text(
                      "lbl_12_25_am".tr,
                      style: CustomTextStyles.bodySmallInterWhiteA700,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgToRight,
                    height: 1.v,
                    width: 52.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 131.v),
            Text(
              "lbl_voting".tr,
              style: CustomTextStyles.titleMediumGray50,
            ),
            SizedBox(height: 13.v),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 14.h),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillBlack9004c1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPngtreeManWea,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                    margin: EdgeInsets.symmetric(vertical: 3.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      bottom: 7.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_artist".tr,
                          style: CustomTextStyles.titleSmallGray50,
                        ),
                        Text(
                          "lbl_artist_name".tr,
                          style: CustomTextStyles.bodySmallGray50,
                        ),
                        Text(
                          "lbl_genre".tr,
                          style: CustomTextStyles.bodySmallGray50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
            CustomOutlinedButton(
              text: "lbl_no_of_votes".tr,
              margin: EdgeInsets.symmetric(horizontal: 19.h),
              buttonStyle: CustomButtonStyles.outlineGrayTL201,
              buttonTextStyle: CustomTextStyles.bodyLargeBluegray100,
            ),
            SizedBox(height: 16.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Row(
                  children: [
                    Obx(
                      () => CustomCheckboxButton(
                        text: "lbl_vcash_2000".tr,
                        value: controller.vcash.value,
                        onChange: (value) {
                          controller.vcash.value = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 61.h),
                      child: Obx(
                        () => CustomCheckboxButton(
                          text: "lbl_bfv_2000".tr,
                          value: controller.bfv.value,
                          onChange: (value) {
                            controller.bfv.value = value;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17.v),
            CustomElevatedButton(
              text: "lbl_confirm".tr,
              margin: EdgeInsets.symmetric(horizontal: 19.h),
            ),
            SizedBox(height: 20.v),
          ],
        ),
      ),
    );
  }
}

import 'controller/subscription_controller.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/widgets/custom_elevated_button.dart';
import 'package:joel_s_application10/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class SubscriptionScreen extends GetWidget<SubscriptionController> {
  const SubscriptionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black9004c.withOpacity(0.03),
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
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.errorContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 412.v,
          width: 350.h,
          decoration: AppDecoration.fillErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration:
                      AppDecoration.gradientLightblueA700ToPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 6.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup2,
                        height: 405.v,
                        width: 350.h,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    right: 10.h,
                    bottom: 406.v,
                  ),
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
                        imagePath: ImageConstant.imgSettings,
                        height: 6.v,
                        width: 52.h,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomOutlinedButton(
                        text: "msg_enter_phone_number".tr,
                        buttonStyle: CustomButtonStyles.outlineGrayTL20,
                        buttonTextStyle: CustomTextStyles.bodyLargeBluegray100,
                      ),
                      SizedBox(height: 15.v),
                      CustomElevatedButton(
                        text: "lbl_an_artiste".tr,
                        buttonTextStyle: CustomTextStyles.titleMediumGray50,
                      ),
                      SizedBox(height: 15.v),
                      CustomElevatedButton(
                        text: "lbl_a_judge".tr,
                        buttonTextStyle: CustomTextStyles.titleMediumGray50,
                      ),
                      SizedBox(height: 17.v),
                      SizedBox(
                        width: 299.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_note".tr,
                                style: CustomTextStyles.titleMediumfffbf9fa,
                              ),
                              TextSpan(
                                text: "lbl_subscribing".tr,
                                style: CustomTextStyles.bodyLargefffbf9fa,
                              ),
                              TextSpan(
                                text: "lbl_as".tr,
                                style: CustomTextStyles.bodyLargefffbf9fa,
                              ),
                              TextSpan(
                                text: "lbl_artiste".tr,
                                style: CustomTextStyles.titleMediumfffbf9fa,
                              ),
                              TextSpan(
                                text: "msg_cost_ghc_70_00_and".tr,
                                style: CustomTextStyles.bodyLargefffbf9fa,
                              ),
                              TextSpan(
                                text: "lbl_judge".tr,
                                style: CustomTextStyles.titleMediumfffbf9fa,
                              ),
                              TextSpan(
                                text: "msg_cost_ghc_10_00".tr,
                                style: CustomTextStyles.bodyLargefffbf9fa,
                              ),
                              TextSpan(
                                text: "\n".tr,
                                style: CustomTextStyles.bodySmallfffbf9fa,
                              ),
                              TextSpan(
                                text: "msg_in_order_to_participate".tr,
                                style: CustomTextStyles.bodyLargefffbf9fa,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

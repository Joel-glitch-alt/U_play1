import 'controller/get_started_subscription_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/core/utils/validation_functions.dart';
import 'package:joel_s_application10/widgets/custom_elevated_button.dart';
import 'package:joel_s_application10/widgets/custom_text_form_field.dart';

//.....................
class GetStartedSubscriptionScreen
    extends GetWidget<GetStartedSubscriptionController> {
  GetStartedSubscriptionScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: 809.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          decoration: AppDecoration
                                              .gradientLightBlueAToPrimary,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 55.v),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgGroup2,
                                                    height: 753.v,
                                                    width: 390.h)
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 25.h, vertical: 39.v),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: fs.Svg(
                                                      ImageConstant.imgGroup5),
                                                  fit: BoxFit.cover)),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 82.v),
                                                Text("lbl_subscribe_as".tr,
                                                    style: theme.textTheme
                                                        .headlineMedium),
                                                SizedBox(height: 87.v),
                                                _buildPhoneNumber(),
                                                SizedBox(height: 15.v),
                                                _buildAnArtiste(),
                                                SizedBox(height: 15.v),
                                                _buildAJudge(),
                                                SizedBox(height: 17.v),
                                                SizedBox(
                                                    width: 335.h,
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text:
                                                                  "lbl_note".tr,
                                                              style: CustomTextStyles
                                                                  .titleMediumff545865),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_subscribing"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeff545865),
                                                          TextSpan(
                                                              text: "lbl_as".tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeff545865),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_artiste"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .titleMediumff545865),
                                                          TextSpan(
                                                              text:
                                                                  "msg_cost_ghc_70_00_and"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeff545865),
                                                          TextSpan(
                                                              text: "lbl_judge"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .titleMediumff545865),
                                                          TextSpan(
                                                              text:
                                                                  "msg_cost_ghc_10_00"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeff545865),
                                                          TextSpan(
                                                              text: "\n".tr,
                                                              style: CustomTextStyles
                                                                  .bodySmallff545865),
                                                          TextSpan(
                                                              text:
                                                                  "msg_in_order_to_participate"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeff545865)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.center)),
                                                SizedBox(height: 5.v),
                                                _buildFrameEleven()
                                              ]))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          height: 150.adaptSize,
                                          width: 150.adaptSize,
                                          margin: EdgeInsets.only(top: 59.v),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 31.h, vertical: 10.v),
                                          decoration: AppDecoration.outline1
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage2,
                                              height: 130.v,
                                              width: 86.h,
                                              alignment: Alignment.center)))
                                ])))))));
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: CustomTextFormField(
            controller: controller.phoneNumberController,
            hintText: "msg_enter_phone_number".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.phone,
            validator: (value) {
              if (!isValidPhone(value)) {
                return "err_msg_please_enter_valid_phone_number".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildAnArtiste() {
    return CustomElevatedButton(
        text: "lbl_an_artiste".tr,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        onPressed: () {
          onTapAnArtiste();
        });
  }

  /// Section Widget
  Widget _buildAJudge() {
    return CustomElevatedButton(
        text: "lbl_a_judge".tr,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        onPressed: () {
          onTapAJudge();
        });
  }

  /// Section Widget
  Widget _buildPrevious() {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_previous".tr,
            margin: EdgeInsets.only(right: 25.h),
            buttonStyle: CustomButtonStyles.outlineBlueGray,
            onPressed: () {
              onTapPrevious();
            }));
  }

  /// Section Widget
  Widget _buildLater() {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_later".tr,
            margin: EdgeInsets.only(left: 25.h),
            buttonStyle: CustomButtonStyles.outlinePrimary,
            onPressed: () {
              onTapLater();
            }));
  }

  /// Section Widget
  Widget _buildFrameEleven() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildPrevious(), _buildLater()]);
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  onTapAnArtiste() {
    Get.toNamed(
      AppRoutes.getStartedScreen,
    );
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  onTapAJudge() {
    Get.toNamed(
      AppRoutes.getStartedScreen,
    );
  }

  /// Navigates to the getStartedIntroductionScreen when the action is triggered.
  onTapPrevious() {
    Get.toNamed(
      AppRoutes.getStartedIntroductionScreen,
    );
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  onTapLater() {
    Get.toNamed(
      AppRoutes.getStartedScreen,
    );
  }
}

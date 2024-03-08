import 'controller/profile_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/core/utils/validation_functions.dart';
import 'package:joel_s_application10/widgets/app_bar/appbar_leading_image.dart';
import 'package:joel_s_application10/widgets/app_bar/appbar_subtitle.dart';
import 'package:joel_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:joel_s_application10/widgets/custom_elevated_button.dart';
import 'package:joel_s_application10/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfilePageScreen extends GetWidget<ProfilePageController> {
  ProfilePageScreen({Key? key}) : super(key: key);

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
                            width: double.maxFinite,
                            child: Container(
                                height: 809.v,
                                width: double.maxFinite,
                                decoration: AppDecoration.fillErrorContainer,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              decoration: AppDecoration
                                                  .gradientLightblueA700ToPrimary,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SizedBox(height: 55.v),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup2,
                                                        height: 753.v,
                                                        width: 390.h)
                                                  ]))),
                                      _buildFrameTwelve()
                                    ]))))))));
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_old_password".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildNewpassword() {
    return CustomTextFormField(
        controller: controller.newpasswordController,
        hintText: "lbl_new_password".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildNewpassword1() {
    return CustomTextFormField(
        controller: controller.newpasswordController1,
        hintText: "msg_confirm_new_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildChange() {
    return CustomElevatedButton(
        text: "lbl_change".tr,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        onPressed: () {
          onTapChange();
        });
  }

  /// Section Widget
  Widget _buildFrameTwelve() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 25.h, top: 46.v, right: 25.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomAppBar(
                  height: 29.v,
                  leadingWidth: 50.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgAngleRight,
                      margin: EdgeInsets.only(left: 25.h, bottom: 4.v),
                      onTap: () {
                        onTapAngleRight();
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_change_password".tr)),
              SizedBox(height: 12.v),
              _buildPassword(),
              SizedBox(height: 15.v),
              _buildNewpassword(),
              SizedBox(height: 15.v),
              _buildNewpassword1(),
              SizedBox(height: 15.v),
              _buildChange()
            ])));
  }

  /// Navigates to the profilePageOneScreen when the action is triggered.
  onTapAngleRight() {
    Get.toNamed(
      AppRoutes.profilePageOneScreen,
    );
  }

  /// Navigates to the profilePageOneScreen when the action is triggered.
  onTapChange() {
    Get.toNamed(
      AppRoutes.profilePageOneScreen,
    );
  }
}

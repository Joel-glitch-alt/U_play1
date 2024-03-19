import 'package:joel_s_application10/controllers/sign_up_page.dart';

import 'controller/signup_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/core/utils/validation_functions.dart';
import 'package:joel_s_application10/widgets/app_bar/appbar_title.dart';
import 'package:joel_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:joel_s_application10/widgets/custom_elevated_button.dart';
import 'package:joel_s_application10/widgets/custom_outlined_button.dart';
import 'package:joel_s_application10/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupPageScreen extends GetWidget<SignupPageController> {
  SignupPageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSignupPage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: SizedBox(
                  height: 809.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration:
                              AppDecoration.gradientLightblueA700ToPrimary,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 55.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup2,
                                height: 753.v,
                                width: 390.h,
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
                              _buildAppBar(),
                              SizedBox(height: 7.v),
                              Text(
                                "msg_please_sign_up_and".tr,
                                style: CustomTextStyles.bodyMediumWhiteA700,
                              ),
                              SizedBox(height: 28.v),
                              Text(
                                "lbl_sign_up".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 13.v),
                              _buildFirstName(),
                              SizedBox(height: 15.v),
                              _buildLastName(),
                              SizedBox(height: 15.v),
                              _buildNickname(),
                              SizedBox(height: 15.v),
                              _buildEmail(),
                              SizedBox(height: 15.v),
                              _buildDob(),
                              SizedBox(height: 15.v),
                              _buildAddress(),
                              SizedBox(height: 15.v),
                              _buildRegion(),
                              SizedBox(height: 15.v),
                              _buildId(),
                              SizedBox(height: 15.v),
                              _buildPassword(),
                              SizedBox(height: 15.v),
                              _buildConfirmpassword(),
                              SizedBox(height: 34.v),
                              _buildSignUp(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 42.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_welcome_to_uplay".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName() {
    return CustomOutlinedButton(
      text: "lbl_first_name".tr,
    );
  }

  /// Section Widget
  Widget _buildLastName() {
    return CustomOutlinedButton(
      text: "lbl_last_name".tr,
    );
  }

  /// Section Widget
  Widget _buildNickname() {
    return CustomOutlinedButton(
      text: "lbl_nickname".tr,
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomOutlinedButton(
      text: "lbl_email".tr,
    );
  }

  /// Section Widget
  Widget _buildDob() {
    return CustomOutlinedButton(
      text: "lbl_dob".tr,
    );
  }

  /// Section Widget
  Widget _buildAddress() {
    return CustomOutlinedButton(
      text: "lbl_address".tr,
    );
  }

  /// Section Widget
  Widget _buildRegion() {
    return CustomOutlinedButton(
      text: "lbl_region".tr,
    );
  }

  /// Section Widget
  Widget _buildId() {
    return CustomTextFormField(
      controller: controller.idController,
      hintText: "lbl_id".tr,
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
      controller: controller.passwordController,
      hintText: "lbl_password".tr,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword() {
    return CustomTextFormField(
      controller: controller.confirmpasswordController,
      hintText: "msg_confirm_password".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
      text: "lbl_sign_up".tr,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/domain/controllers/profile_page.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/validation_functions.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/appbar_leading_image.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/appbar_subtitle.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/custom_app_bar.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_elevated_button.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_text_form_field.dart';

class ProfilePageScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: GetBuilder<ProfilePageController>(
          builder: (controller) {
            return SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
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
                          _buildFrameTwelve(controller),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPassword(ProfilePageController controller) {
    return GetBuilder<ProfilePageController>(
      builder: (_) {
        return CustomTextFormField(
          controller: controller.oldPasswordController,
          hintText: "Old Password".tr,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  Widget _buildNewpassword(ProfilePageController controller) {
    return GetBuilder<ProfilePageController>(
      builder: (_) {
        return CustomTextFormField(
          controller: controller.newPasswordController,
          hintText: "New Password".tr,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  Widget _buildNewpassword1(ProfilePageController controller) {
    return GetBuilder<ProfilePageController>(
      builder: (_) {
        return CustomTextFormField(
          controller: controller.confirmNewPasswordController,
          hintText: "confirm new password",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            Get.snackbar('Error', 'Please enter a valid password',
                colorText: Colors.red);
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  Widget _buildChange(ProfilePageController controller) {
    return GetBuilder<ProfilePageController>(
      builder: (_) {
        return CustomElevatedButton(
          text: "Confirm",
          margin: EdgeInsets.symmetric(horizontal: 20.h),
          onPressed: () {
            //controller.onTapChange();
            print('Correct');
          },
        );
      },
    );
  }

  Widget _buildFrameTwelve(ProfilePageController controller) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 25.h, top: 46.v, right: 25.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(
              height: 29.v,
              leadingWidth: 50.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgAngleRight,
                margin: EdgeInsets.only(left: 25.h, bottom: 4.v),
                onTap: () {},
              ),
              centerTitle: true,
              title: AppbarSubtitle(text: "Change Password!"),
            ),
            SizedBox(height: 12.v),
            _buildPassword(controller),
            SizedBox(height: 15.v),
            _buildNewpassword(controller),
            SizedBox(height: 15.v),
            _buildNewpassword1(controller),
            SizedBox(height: 15.v),
            _buildChange(controller),
          ],
        ),
      ),
    );
  }
}

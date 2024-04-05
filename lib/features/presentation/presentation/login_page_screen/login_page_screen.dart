import 'package:joel_s_application10/features/domain/controllers/login_controller.dart';
import 'package:joel_s_application10/features/presentation/presentation/forget_Password/forget_password.dart';
import 'package:joel_s_application10/features/presentation/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/register/registerLogin.dart';
import 'package:joel_s_application10/features/presentation/presentation/subscription_screen/subscription_screen.dart';

import 'controller/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/validation_functions.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_checkbox_button.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_elevated_button.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends GetWidget<LoginController> {
  LoginPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  get onTextChanged => null;

  get onArtistsPressed => null;

  get onJudgePressed => null;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (ctrl) {
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
                    image: AssetImage(ImageConstant.imgSignupPage),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Form(
                key: _formKey,
                child: SizedBox(
                  width: double.maxFinite,
                  child: SizedBox(
                    height: 809.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topCenter, children: [
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
                                  width: 390.h)
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 25.h, top: 28.v, right: 25.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Welcome BacK",
                                  style:
                                      CustomTextStyles.headlineMediumSemiBold),
                              SizedBox(height: 11.v),
                              Text("msg_please_log_in_and".tr,
                                  style: CustomTextStyles.bodyMediumWhiteA700),
                              SizedBox(height: 29.v),
                              Text("Enter Your Details",
                                  style: theme.textTheme.titleMedium),
                              SizedBox(height: 12.v),
                              CustomTextFormField(
                                  controller: ctrl.phoneController,
                                  hintText: "Phone Number"),
                              SizedBox(height: 15.v),
                              CustomTextFormField(
                                  controller: ctrl.passwordController,
                                  hintText: "lbl_password".tr,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "please enter valid password";
                                    }
                                    return null;
                                  },
                                  obscureText: true),
                              SizedBox(height: 16.v),
                              SizedBox(height: 23.v),
                              CustomElevatedButton(
                                isLoading: ctrl.isLoading.value,
                                text: "LOG IN",
                                margin: EdgeInsets.symmetric(horizontal: 20.h),
                                buttonStyle:
                                    CustomButtonStyles.outlineLightBlueA,
                                buttonTextStyle: theme.textTheme.titleMedium!,
                                onPressed: () {
                                  // Set isLoading to true when the button is pressed
                                  //ctrl.setLoading(false);
                                  // Call the login function from the controller
                                  // ctrl.login().then(
                                  //       (_) {},
                                  //     );
                                  // Future.delayed(Duration(seconds: 3), () {
                                  //   ctrl.isLoading(true);
                                  // });
                                  ctrl.login(context);
                                  //Get.to(ProfilePageScreen);
                                  //onTapTxtProfilePage();

                                  print('Log In');
                                },
                              ),
                              SizedBox(height: 18.v),
                              InkWell(
                                onTap: () {
                                  Get.to(ForgotPasswordScreen());
                                },
                                child: Text(
                                  "forgot password",
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              SizedBox(height: 19.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("Need an Account?",
                                            style: theme.textTheme.bodyLarge)),
                                    GestureDetector(
                                      onTap: () {
                                        onTapTxtSignUp();
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text("lbl_signup2".tr,
                                            style: CustomTextStyles
                                                .titleMediumPrimaryContainer),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Text("Subscribe as Artiste or Voter?",
                                        style: theme.textTheme.bodyLarge),
                                    GestureDetector(
                                      onTap: () {
                                        onTapTxtSubscribe();
                                        //Get.to(SubscriptionScreen);
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text("lbl_subscribe".tr,
                                            style: CustomTextStyles
                                                .titleMediumPrimaryContainer),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  /// Section Widget
  // Widget _buildRememberMe() {
  //   return Align(
  //       alignment: Alignment.centerLeft,
  //       child: Obx(() => CustomCheckboxButton(
  //           alignment: Alignment.centerLeft,
  //           text: "lbl_remember_me".tr,
  //           value: controller.rememberMe.value,
  //           textStyle: theme.textTheme.bodyLarge,
  //           onChange: (value) {
  //             controller.rememberMe.value = value;
  //           })));
  // }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapLogIn() {
    Get.toNamed(
      AppRoutes.homePage /*homeContainerScreen*/,
    );
  }

  /// Navigates to the signupPageScreen when the action is triggered.
  onTapTxtSignUp() {
    // Get.toNamed(
    //   AppRoutes.signupPageScreen,
    // );
    Get.to(RegisterOtp(productTypesList: [
      {"id": 1, "label": "Artiste"},
      {"id": 2, "label": "Judge"},
    ], isChecked: true, category: ''));
  }

  /// Navigates to the subscriptionScreen when the action is triggered.
  onTapTxtSubscribe() {
    // Get.toNamed(
    //   AppRoutes.subscriptionScreen,
    // );
    Get.to(
      SubscriptionScreen(
        onTextChanged: onTextChanged ?? (String text) {},
        onArtistsPressed: onArtistsPressed ?? () {},
        onJudgePressed: onJudgePressed ?? () {},
      ),
    );
  }

  //Nanvigate to ForgotPassword Screen when the action is triggered.
  // onTapForgotPasswordScreen() {
  //   // Get.toNamed(
  //   //   AppRoutes.ForgotPasswordScreen,
  //   // );
  //   Get.to(ForgotPasswordScreen);
  // }
}

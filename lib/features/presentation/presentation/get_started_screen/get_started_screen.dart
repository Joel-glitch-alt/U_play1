import 'package:joel_s_application10/features/presentation/presentation/login_page_screen/login_page_screen.dart';

import 'controller/get_started_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_elevated_button.dart';

class GetStartedScreen extends GetWidget<GetStartedController> {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 809.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: AppDecoration.gradientLightBlueAToPrimary,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            SizedBox(height: 55.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup2,
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
                                  image: fs.Svg(ImageConstant.imgGroup5),
                                  fit: BoxFit.cover)),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            SizedBox(height: 82.v),
                            Text("lbl_a_word".tr,
                                style: theme.textTheme.headlineMedium),
                            SizedBox(height: 87.v),
                            Opacity(
                                opacity: 0.7,
                                child: Text("lbl_to_contestants".tr,
                                    style:
                                        CustomTextStyles.titleMediumPrimary)),
                            SizedBox(height: 14.v),
                            Container(
                                width: 327.h,
                                margin: EdgeInsets.only(left: 6.h, right: 5.h),
                                child: Text("msg_lorem_ipsum_dolor2".tr,
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyMedium)),
                            SizedBox(height: 44.v),
                            Text("lbl_to_judges".tr,
                                style: CustomTextStyles.titleMediumPrimary_1),
                            SizedBox(height: 12.v),
                            Container(
                                width: 327.h,
                                margin: EdgeInsets.only(left: 6.h, right: 5.h),
                                child: Text("msg_lorem_ipsum_dolor2".tr,
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyMedium)),
                            SizedBox(height: 28.v),
                            CustomElevatedButton(
                                text: "lbl_get_started".tr,
                                buttonStyle: CustomButtonStyles.outlinePrimary,
                                onPressed: () {
                                  onTapGetStarted();
                                })
                          ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: 150.adaptSize,
                          height: 150.adaptSize,
                          margin: EdgeInsets.only(top: 59.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 10.v),
                          decoration: AppDecoration.outline1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgImage2,
                              height: 130.v,
                              width: 86.h,
                              alignment: Alignment.center)))
                ]))));
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapGetStarted() {
    Get.to(LoginPageScreen()
        //AppRoutes.loginPageScreen,
        );
  }
}

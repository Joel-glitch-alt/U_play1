import 'controller/get_started_introduction_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/widgets/custom_elevated_button.dart';

class GetStartedIntroductionScreen
    extends GetWidget<GetStartedIntroductionController> {
  const GetStartedIntroductionScreen({Key? key}) : super(key: key);

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
                              horizontal: 111.h, vertical: 121.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup5),
                                  fit: BoxFit.cover)),
                          child: Text("lbl_introduction".tr,
                              style: theme.textTheme.headlineMedium))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 150.adaptSize,
                          width: 150.adaptSize,
                          margin: EdgeInsets.only(top: 59.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 10.v),
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgImage2,
                              height: 130.v,
                              width: 86.h,
                              alignment: Alignment.center))),
                  _buildFrameEight()
                ]))));
  }

  /// Section Widget
  Widget _buildFrameEight() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(bottom: 39.v),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  height: 364.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            width: 338.h,
                            child: Text("msg_lorem_ipsum_dolor".tr,
                                maxLines: 18,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium))),
                    CustomImageView(
                        imagePath: ImageConstant.imgFrame10,
                        height: 40.v,
                        width: 390.h,
                        alignment: Alignment.bottomCenter)
                  ])),
              CustomElevatedButton(
                  text: "lbl_next".tr,
                  margin: EdgeInsets.symmetric(horizontal: 45.h),
                  buttonStyle: CustomButtonStyles.outlinePrimary,
                  onPressed: () {
                    onTapNext();
                  })
            ])));
  }

  /// Navigates to the getStartedSubscriptionScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.getStartedSubscriptionScreen,
    );
  }
}

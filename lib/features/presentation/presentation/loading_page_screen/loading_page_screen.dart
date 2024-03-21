import 'package:joel_s_application10/features/domain/controllers/loading_page.dart';

import 'controller/loading_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';

class LoadingPageScreen extends GetWidget<LoadingPageController> {
  const LoadingPageScreen({Key? key}) : super(key: key);

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
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(93.h, 184.v, 93.h, 31.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                                height: 203.adaptSize,
                                width: 203.adaptSize,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 41.h, vertical: 11.v),
                                decoration: AppDecoration.outline.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgImage2,
                                    height: 180.v,
                                    width: 119.h,
                                    alignment: Alignment.center)),
                            Spacer(),
                            Container(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.h),
                                    gradient: LinearGradient(
                                        begin: Alignment(0.5, 0.5),
                                        end: Alignment(0.74, 0.93),
                                        colors: [
                                          appTheme.lightBlueA700,
                                          appTheme.lightBlueA700.withOpacity(0)
                                        ])))
                          ])))
                ]))));
  }
}

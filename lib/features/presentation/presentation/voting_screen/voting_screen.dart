import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/domain/controllers/voting.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_checkbox_button.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_elevated_button.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_outlined_button.dart';

class VotingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black9004c.withOpacity(0.02),
        body: GetBuilder<VotingsController>(
          builder: (ctrl) {
            return SingleChildScrollView(
              child: Container(
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
                        text: "No. of Vcash Votes: ${ctrl.vcashVotes.value}",
                        margin: EdgeInsets.symmetric(horizontal: 19.h),
                        buttonStyle: CustomButtonStyles.outlineGrayTL201,
                        buttonTextStyle: CustomTextStyles.bodyLargeBluegray100,
                        onPressed: (() {
                          print('IDBDBBEDBBEBBDEEEDB');
                        }),
                      ),
                      // Button to vote for Vcash
                      // CustomElevatedButton(
                      //   text: "Vote for Vcash",
                      //   margin: EdgeInsets.symmetric(horizontal: 50.h /*19 */),
                      // onPressed: () {
                      //   ctrl.voteForVcash();
//},
                      // ),
                      SizedBox(height: 16.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Row(
                            children: [
                              Obx(
                                () => CustomCheckboxButton(
                                  text: "Vcash:2000".tr,
                                  value: ctrl.vcash.value,
                                  onChange: (value) {
                                    ctrl.vcash.value = value;
                                    OnTap() {
                                      print('VCash');
                                    }
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5 /*61.h*/),
                                child: Obx(
                                  () => CustomCheckboxButton(
                                    text: "Vcash:2000".tr,
                                    value: ctrl.bfv.value,
                                    onChange: (value) {
                                      ctrl.bfv.value = value;
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
                        text: "Confirm",
                        margin: EdgeInsets.symmetric(horizontal: 50.h /*19 */),
                        onPressed: () {
                          print('Happy');
                          ctrl.bfvVotes();
                        },
                      ),
                      SizedBox(height: 20.v),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

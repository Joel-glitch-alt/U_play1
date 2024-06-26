import 'package:get/get.dart';
import 'package:joel_s_application10/features/domain/controllers/contestants.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_outlined_button.dart';

import 'widgets/userprofile1_item_widget.dart';
import 'controller/contestants_controller.dart';
import 'models/contestants_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/appbar_title_searchview.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ContestantsPage extends StatelessWidget {
  ContestantsPage({Key? key}) : super(key: key);

  // ContestantsController controller =
  //  Get.put(ContestantsController(ContestantsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            ///height: 730.v,
            height: MediaQuery.of(context).size.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                GetBuilder<ContestantsController>(builder: (controller) {
                  return Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 780.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  ///height: 809.v,
                                  height: MediaQuery.of(context).size.height,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0, 0),
                                      end: Alignment(1, 1),
                                      colors: [
                                        appTheme.lightBlueA700
                                            .withOpacity(0.65),
                                        theme.colorScheme.primary
                                            .withOpacity(0.65)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 25.h),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildForm(),
                                        SizedBox(height: 16.v),
                                        Opacity(
                                            opacity: 0.9,
                                            child: Text("Top 5",
                                                style: CustomTextStyles
                                                    .titleSmallGray50_1)),
                                        SizedBox(height: 2.v),
                                        _buildUserProfile(),
                                        SizedBox(height: 22.v),
                                        //_buildForm1()
                                        _buildTabsGifts()
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        /////
                        // _buildAppBar()
                        //////
                      ],
                    ),
                  );
                }),
                CustomImageView(
                    imagePath: ImageConstant.imgGroup2,
                    height: 753.v,
                    width: 390.h,
                    alignment: Alignment.topCenter)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildForm() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
      decoration: AppDecoration.fillGray
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 165.h,
            margin: EdgeInsets.only(bottom: 3.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgPngtreeManWea80x80,
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    radius: BorderRadius.circular(40.h),
                    margin: EdgeInsets.only(top: 3.v)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("artista", style: theme.textTheme.titleSmall),
                    Text("Artist Name", style: theme.textTheme.bodySmall),
                    Text("Genre", style: theme.textTheme.bodySmall),
                    Text("Votes", style: theme.textTheme.titleSmall),
                    Text("8000", style: theme.textTheme.bodySmall)
                  ],
                ),
              ],
            ),
          ),
          CustomImageView(
              imagePath: ImageConstant.imgSearchAmber500,
              height: 9.adaptSize,
              width: 9.adaptSize,
              radius: BorderRadius.circular(1.h),
              margin: EdgeInsets.only(top: 67.v, right: 10.h, bottom: 10.v))
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Expanded(
      child: GetBuilder<ContestantsController>(
        builder: (controller) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 5.v);
            },
            itemCount: controller
                .contestantsModelObj.value.userprofile1ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile1ItemModel model = controller
                  .contestantsModelObj.value.userprofile1ItemList.value[index];
              return Userprofile1ItemWidget(model);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildForm1() {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Regions and Reps", style: CustomTextStyles.titleSmallGray50),
          SizedBox(height: 151.v),
          _buildFrameTwentyFour(
              regionCounter: "Region 2", contestantsCounter: "12 Contestants"),
          SizedBox(height: 5.v),
          _buildFrameTwentyFour(
              regionCounter: "Region 3", contestantsCounter: "12 Contestants"),
          SizedBox(height: 5.v),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
            decoration: AppDecoration.gradientWhiteAToWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Region 4",
                        style: CustomTextStyles.labelLargeWhiteA700SemiBold),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                  ],
                ),
                Text("12 Contestants",
                    style: CustomTextStyles.bodySmallWhiteA700),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            width: 340.h,
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            decoration: AppDecoration.gradientWhiteAToWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.v),
                Text("Region 5".tr,
                    style: CustomTextStyles.labelLargeWhiteA700SemiBold),
                SizedBox(height: 3.v),
                Text("12 Contestants",
                    style: CustomTextStyles.bodySmallWhiteA700),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    final ContestantsController controller = Get.find<ContestantsController>();
    return CustomAppBar(
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 25.h),
        hintText: "Search here",
        controller: controller.searchController,
        //controller: Get.find<ContestantsController>().searchController,
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgUserAlt40x40,
          margin: EdgeInsets.only(left: 15.h, right: 25.h),
          onTap: () {
            onTapUserAlt();
            print('Happy');
          },
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameTwentyFour({
    required String regionCounter,
    required String contestantsCounter,
  }) {
    return GetBuilder(builder: (controller) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
        decoration: AppDecoration.gradientWhiteAToWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  regionCounter,
                  style: CustomTextStyles.labelLargeWhiteA700SemiBold.copyWith(
                    color: appTheme.whiteA700.withOpacity(0.8),
                  ),
                ),
                Text(
                  contestantsCounter,
                  style: CustomTextStyles.bodySmallWhiteA700.copyWith(
                    color: appTheme.whiteA700.withOpacity(0.5),
                  ),
                )
              ],
            ),
            CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 15.adaptSize,
                width: 15.adaptSize,
                margin: EdgeInsets.only(bottom: 16.v))
          ],
        ),
      );
    });
  }

  /// Navigates to the profilePageOneScreen when the action is triggered.
  onTapUserAlt() {
    Get.toNamed(
      AppRoutes.profilePageOneScreen,
    );
  }

  /// Section Widget
  Widget _buildTabsGifts() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.gradientGrayToWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame46,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                //onTapImgImage2();
              }),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsBlueGray400,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                // onTapImgUser2();
              }),
          CustomOutlinedButton(
              width: 140.h,
              text: "lbl_gifts".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsupPink300,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              buttonStyle: CustomButtonStyles.outlinePink,
              buttonTextStyle: CustomTextStyles.titleSmallPink300),
          CustomImageView(
              imagePath: ImageConstant.imgInfo,
              height: 40.adaptSize,
              width: 40.adaptSize,
              onTap: () {
                // onTapImgInfo3();
              })
        ]));
  }
}

import '../fanbase_screen/widgets/form1_item_widget.dart';
import '../fanbase_screen/widgets/form_item_widget.dart';
import 'controller/fanbase_controller.dart';
import 'models/form1_item_model.dart';
import 'models/form_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/home_page/home_page.dart';
import 'package:joel_s_application10/widgets/app_bar/appbar_title_searchview.dart';
import 'package:joel_s_application10/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:joel_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:joel_s_application10/widgets/custom_bottom_bar.dart';

class FanbaseScreen extends GetWidget<FanbaseController> {
  const FanbaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 809.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(
                            height: 809.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 809.v,
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
                                              ])))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              left: 25.h,
                                              top: 81.v,
                                              right: 25.h),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                _buildForm(),
                                                SizedBox(height: 15.v),
                                                _buildFrameThirtyThree(),
                                                SizedBox(height: 15.v),
                                                _buildForm1()
                                              ])))
                                ])),
                        _buildAppBar()
                      ])),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup2,
                      height: 753.v,
                      width: 390.h,
                      alignment: Alignment.topCenter)
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildForm() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgSearchPink300,
              height: 42.v,
              width: 58.h,
              margin: EdgeInsets.symmetric(vertical: 20.v)),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_fanbase_of_artist".tr,
                        style: theme.textTheme.titleSmall),
                    Text("lbl_artist_name".tr,
                        style: theme.textTheme.bodySmall),
                    Text("lbl_genre".tr, style: theme.textTheme.bodySmall),
                    Text("lbl_fans".tr, style: theme.textTheme.titleSmall),
                    Text("lbl_8000".tr, style: theme.textTheme.bodySmall)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildFrameThirtyThree() {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                          opacity: 0.9,
                          child: Text("lbl_trending_videos".tr,
                              style: CustomTextStyles.titleSmallGray50_1)),
                      SizedBox(height: 3.v),
                      Expanded(
                          child: SizedBox(
                              height: 80.v,
                              child: Obx(() => ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(width: 10.h);
                                  },
                                  itemCount: controller.fanbaseModelObj.value
                                      .formItemList.value.length,
                                  itemBuilder: (context, index) {
                                    FormItemModel model = controller
                                        .fanbaseModelObj
                                        .value
                                        .formItemList
                                        .value[index];
                                    return FormItemWidget(model);
                                  }))))
                    ]))));
  }

  /// Section Widget
  Widget _buildForm1() {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_fanbase_media".tr,
              style: CustomTextStyles.titleSmallGray50),
          SizedBox(height: 5.v),
          Obx(() => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 81.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.h,
                  crossAxisSpacing: 20.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  controller.fanbaseModelObj.value.form1ItemList.value.length,
              itemBuilder: (context, index) {
                Form1ItemModel model =
                    controller.fanbaseModelObj.value.form1ItemList.value[index];
                return Form1ItemWidget(model);
              }))
        ]));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 25.h),
            hintText: "lbl_search".tr,
            controller: controller.searchController),
        actions: [
          AppbarTrailingIconbuttonOne(
              imagePath: ImageConstant.imgUserAlt40x40,
              margin: EdgeInsets.only(left: 15.h, right: 25.h),
              onTap: () {
                onTapUserAlt();
              })
        ]);
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the profilePageOneScreen when the action is triggered.
  onTapUserAlt() {
    Get.toNamed(
      AppRoutes.profilePageOneScreen,
    );
  }
}

import 'package:joel_s_application10/features/data/data/repository/home.dart';
import 'package:joel_s_application10/features/domain/controllers/home.dart';
import 'package:joel_s_application10/features/presentation/presentation/home_page/models/home_model.dart';

import 'widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/appbar_title_searchview.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/custom_app_bar.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //HomeController controller = Get.put(HomeController(HomeModel().obs, homeRepo: null));
  //final HomeController controller = Get.put(HomeController(homeRepo:));
  final HomeController controller =
      Get.put(HomeController(homeRepo: HomeRepo(apiClient: Get.find())));

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15.0),
                      color: theme.colorScheme.primary.withOpacity(0.65),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        //controller.textSearchCtrl();
                        print("Search here");
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: SizedBox(
              height: 730.v,
              width: double.maxFinite,
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.center,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                          height: 730.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
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
                                      appTheme.lightBlueA700.withOpacity(0.65),
                                      theme.colorScheme.primary
                                          .withOpacity(0.65)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildForm(),
                                          SizedBox(height: 15.v),
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 9.h, right: 31.h),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                              child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Column(children: [
                                                      Text("Artist".tr,
                                                          style: theme.textTheme
                                                              .titleSmall),
                                                      Text("Name of Artiste".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallWhiteA700_1)
                                                    ]),
                                                    Spacer(flex: 39),
                                                    Column(children: [
                                                      Text("Song title".tr,
                                                          style: theme.textTheme
                                                              .titleSmall),
                                                      Text("Title of Song",
                                                          style: CustomTextStyles
                                                              .bodySmallWhiteA700_1)
                                                    ]),
                                                    Spacer(flex: 60),
                                                    Column(children: [
                                                      Text("Votes",
                                                          style: theme.textTheme
                                                              .titleSmall),
                                                      Text("50,000",
                                                          style: CustomTextStyles
                                                              .bodySmallWhiteA700_1)
                                                    ])
                                                  ])),
                                          SizedBox(height: 15.v),
                                          Text("Fan Base Trending Videos",
                                              style:
                                                  theme.textTheme.titleSmall),
                                          SizedBox(height: 1.v),
                                          _buildHome(),
                                          SizedBox(height: 15.v),
                                          _buildForm2()
                                        ])))
                          ])),
                      //   _buildAppBar(),
                      Spacer()
                    ])),
                CustomImageView(
                    imagePath: ImageConstant.imgGroup2,
                    height: 753.v,
                    width: 390.h,
                    alignment: Alignment.topCenter)
              ]),
            ),
          ),
        ),
      );
    });
  }

  /// Section Widget
  Widget _buildForm() {
    return SingleChildScrollView(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
          height: 220.v,
          width: 340.h,
          decoration:
              BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRetroMicrophon,
                  height: 220.v,
                  width: 340.h,
                  radius: BorderRadius.circular(10.h),
                  alignment: Alignment.center),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomIconButton(
                          height: 35.adaptSize,
                          width: 35.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          decoration: IconButtonStyleHelper.fillBlackC,
                          alignment: Alignment.centerRight,
                          onTap: () {
                            onTapBtnGiftIcon();
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGiftIcon)),
                      SizedBox(height: 41.v),
                      Container(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          decoration: AppDecoration.fillBlack9004c1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgOverflowMenu,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              radius: BorderRadius.circular(20.h),
                              alignment: Alignment.center)),
                      SizedBox(height: 47.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                onTapFrameNineteen();
                              },
                              child: Container(
                                  height: 35.v,
                                  width: 47.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 9.h, vertical: 6.v),
                                  decoration: AppDecoration.fillBlack9004c1
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgVoteIcon,
                                      height: 22.v,
                                      width: 27.h,
                                      alignment: Alignment.center))),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8.v),
                            decoration: AppDecoration.fillBlack9004c1.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                    height: 18.v,
                                    width: 94.h,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 18.v,
                                                  width: 94.h,
                                                  decoration: BoxDecoration())),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text("lbl_vcash_2000".tr,
                                                  style: CustomTextStyles
                                                      .labelLargeWhiteA700))
                                        ])),
                                Container(
                                  height: 18.v,
                                  width: 76.h,
                                  margin: EdgeInsets.only(left: 10.h),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: 18.v,
                                                width: 76.h,
                                                decoration: BoxDecoration())),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("lbl_bfv_2000".tr,
                                                style: CustomTextStyles
                                                    .labelLargeWhiteA700))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //
  }

  /// Section Widget
  Widget _buildHome() {
    return SizedBox(
      height: 80.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(width: 10.h);
          },
          itemCount: controller.homeModelObj.value.homeItemList.value.length,
          itemBuilder: (context, index) {
            HomeItemModel model =
                controller.homeModelObj.value.homeItemList.value[index];
            return HomeItemWidget(model);
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildForm1() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 7.h),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Regions And Reps ", style: CustomTextStyles.titleSmallGray50),
          SizedBox(height: 3.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
              decoration: AppDecoration.gradientWhiteAToWhiteA
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4.v),
                    _buildFrameFive(
                        regionCounter: "Region 1",
                        arrowDown: ImageConstant.imgArrowUp),
                    SizedBox(height: 2.v),
                    _buildFrameThirtyNine(artistName: "lbl_artist_name2".tr),
                    SizedBox(height: 4.v),
                    _buildFrameThirtyNine(artistName: "lbl_artist_name2".tr),
                    SizedBox(height: 4.v),
                    _buildFrameThirtyNine(artistName: "lbl_artist_name2".tr),
                    SizedBox(height: 4.v),
                    _buildFrameThirtyNine(artistName: "lbl_artist_name2".tr),
                    SizedBox(height: 4.v),
                    _buildFrameThirtyNine(artistName: "lbl_artist_name2".tr),
                    SizedBox(height: 3.v),
                    SizedBox(
                        height: 9.v,
                        width: 142.h,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 8.v,
                              width: 142.h,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color:
                                          appTheme.whiteA700.withOpacity(0.05),
                                      width: 1.h),
                                ),
                              ),
                            ),
                          ),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_artist_name2".tr,
                                  style: CustomTextStyles.bodySmallWhiteA700)),
                          CustomImageView(
                              imagePath: ImageConstant.imgVoteIconGray50,
                              height: 8.v,
                              width: 15.h,
                              alignment: Alignment.bottomRight)
                        ]))
                  ])),
          SizedBox(height: 5.v),
          Container(
              width: 162.h,
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
                          Text("Region 2",
                              style:
                                  CustomTextStyles.labelLargeWhiteA700SemiBold),
                          Text("12 contestants".tr,
                              style: CustomTextStyles.bodySmallWhiteA700)
                        ]),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        margin: EdgeInsets.only(bottom: 16.v))
                  ])),
          SizedBox(height: 5.v),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            decoration: AppDecoration.gradientWhiteAToWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFrameFive(
                    regionCounter: "Region 3",
                    arrowDown: ImageConstant.imgArrowDown),
                SizedBox(height: 12.v),
                Text("12 contestants".tr,
                    style: CustomTextStyles.bodySmallWhiteA700)
              ],
            ),
          ),
        ]),
      ),
    );
  }

  /// Section Widget
  Widget _buildForm2() {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildForm1(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 7.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 162.h,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      decoration: AppDecoration.fillAmber.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPngtreeManWea80x80,
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                radius: BorderRadius.circular(40.h)),
                            Column(children: [
                              SizedBox(
                                  height: 64.v,
                                  width: 71.h,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Text("My Artist",
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 15.v),
                                                child: Text("Artist Name",
                                                    style: theme
                                                        .textTheme.bodySmall))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 15.v),
                                                child: Text("Genre",
                                                    style: theme
                                                        .textTheme.bodySmall))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text("Votes",
                                                style:
                                                    theme.textTheme.titleSmall))
                                      ])),
                              Text("8000", style: theme.textTheme.bodySmall)
                            ])
                          ])),
                  SizedBox(height: 16.v),
                  Opacity(
                      opacity: 0.9,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("Top 5",
                              style: CustomTextStyles.titleSmallGray50_1))),
                  SizedBox(height: 2.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: _buildFrameTwentyNine(
                          nameArtist: "Name Artist",
                          search: ImageConstant.imgSearchBlueGray100)),
                  SizedBox(height: 5.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: _buildFrameTwentyNine(
                          nameArtist: "Name Artist",
                          search: ImageConstant.imgSearchAmber500)),
                  SizedBox(height: 5.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: _buildFrameTwentyNine(
                          nameArtist: "Name Artist",
                          search: ImageConstant.imgSearchBlueGray100)),
                  SizedBox(height: 5.v),
                  Container(
                    margin: EdgeInsets.only(left: 2.h),
                    padding: EdgeInsets.symmetric(horizontal: 5.h),
                    decoration: AppDecoration.fillOnErrorContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder1),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPic1x20,
                            height: 1.v,
                            width: 20.h,
                            margin: EdgeInsets.only(top: 5.v)),
                        Opacity(
                            opacity: 0.5,
                            child: Padding(
                                padding: EdgeInsets.only(left: 10.h, top: 5.v),
                                child: Text("Name Artist".tr,
                                    style: CustomTextStyles
                                        .labelLargeWhiteA700Medium))),
                        CustomImageView(
                            imagePath: ImageConstant.imgSearchBlueGray100,
                            height: 1.v,
                            width: 9.h,
                            radius: BorderRadius.circular(0.5.adaptSize),
                            margin: EdgeInsets.only(left: 10.h, top: 10.v))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  //PreferredSizeWidget _buildAppBar() {
  //  return CustomAppBar(
  //   title: AppbarTitleSearchview(
  //     margin: EdgeInsets.only(left: 25.h),
  //    hintText: "search",
  // controller: controller.searchController),
  // actions: [
  //   AppbarTrailingIconbuttonOne(
  //       imagePath: ImageConstant.imgUserAlt40x40,
  //       margin: EdgeInsets.only(left: 15.h, right: 25.h),
  //       onTap: () {
  //         /// onTapUserAlt();
  //       })
  // ]);
  //}

  /// Common widget
  Widget _buildFrameThirtyNine({required String artistName}) {
    return SizedBox(
        height: 15.v,
        width: 142.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 15.v,
                  width: 142.h,
                  decoration: AppDecoration.outlineWhiteA,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVoteIconGray50,
                      height: 13.v,
                      width: 15.h,
                      alignment: Alignment.topRight))),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(artistName,
                  style: CustomTextStyles.bodySmallWhiteA700
                      .copyWith(color: appTheme.whiteA700.withOpacity(0.5))))
        ]));
  }

  /// Common widget
  Widget _buildFrameFive({
    required String regionCounter,
    required String arrowDown,
  }) {
    return SizedBox(
        width: 142.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(regionCounter,
              style: CustomTextStyles.labelLargeWhiteA700SemiBold
                  .copyWith(color: appTheme.whiteA700.withOpacity(0.8))),
          CustomImageView(
              imagePath: arrowDown,
              height: 4.v,
              width: 15.h,
              margin: EdgeInsets.only(top: 5.v))
        ]));
  }

  /// Common widget
  Widget _buildFrameTwentyNine({
    required String nameArtist,
    required String search,
  }) {
    return Container(
        padding: EdgeInsets.all(5.h),
        decoration: AppDecoration.fillWhiteA7001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPic,
              height: 20.adaptSize,
              width: 20.adaptSize,
              radius: BorderRadius.circular(10.h)),
          Opacity(
              opacity: 0.5,
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(nameArtist,
                      style: CustomTextStyles.labelLargeWhiteA700Medium
                          .copyWith(
                              color: appTheme.whiteA700.withOpacity(0.53))))),
          CustomImageView(
              imagePath: search,
              height: 9.adaptSize,
              width: 9.adaptSize,
              radius: BorderRadius.circular(1.h),
              margin: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 5.v))
        ]));
  }

  /// Navigates to the giftAvailableRewardsScreen when the action is triggered.
  onTapBtnGiftIcon() {
    Get.toNamed(
      AppRoutes.giftAvailableRewardsScreen,
    );
  }

  /// Navigates to the votingScreen when the action is triggered.
  onTapFrameNineteen() {
    Get.toNamed(
      AppRoutes.votingScreen,
    );
  }

  /// Navigates to the profilePageOneScreen when the action is triggered.
  onTapUserAlt() {
    Get.toNamed(
      AppRoutes.profilePageOneScreen,
    );
  }
}
//////////////////
///

    //
    // Widget _buildForm() {
    //   return ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: [
    //       Card(
    //         clipBehavior: Clip.antiAlias,
    //         elevation: 0,
    //         margin: EdgeInsets.all(0),
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadiusStyle.roundedBorder10),
    //         child: Container(
    //           height: 220.v,
    //           width: 340.h,
    //           decoration:
    //               BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
    //           child: Stack(
    //             alignment: Alignment.center,
    //             children: [
    //               CustomImageView(
    //                   imagePath: ImageConstant.imgRetroMicrophon,
    //                   height: 220.v,
    //                   width: 340.h,
    //                   radius: BorderRadius.circular(10.h),
    //                   alignment: Alignment.center),
    //               Align(
    //                 alignment: Alignment.center,
    //                 child: Padding(
    //                   padding: EdgeInsets.symmetric(horizontal: 7.h),
    //                   child: Column(
    //                     mainAxisSize: MainAxisSize.min,
    //                     children: [
    //                       CustomIconButton(
    //                           height: 35.adaptSize,
    //                           width: 35.adaptSize,
    //                           padding: EdgeInsets.all(7.h),
    //                           decoration: IconButtonStyleHelper.fillBlackC,
    //                           alignment: Alignment.centerRight,
    //                           onTap: () {
    //                             onTapBtnGiftIcon();
    //                           },
    //                           child: CustomImageView(
    //                               imagePath: ImageConstant.imgGiftIcon)),
    //                       SizedBox(height: 41.v),
    //                       Container(
    //                           height: 40.adaptSize,
    //                           width: 40.adaptSize,
    //                           decoration: AppDecoration.fillBlack9004c1.copyWith(
    //                               borderRadius:
    //                                   BorderRadiusStyle.roundedBorder20),
    //                           child: CustomImageView(
    //                               imagePath: ImageConstant.imgOverflowMenu,
    //                               height: 40.adaptSize,
    //                               width: 40.adaptSize,
    //                               radius: BorderRadius.circular(20.h),
    //                               alignment: Alignment.center)),
    //                       SizedBox(height: 47.v),
    //                       Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                         children: [
    //                           GestureDetector(
    //                               onTap: () {
    //                                 onTapFrameNineteen();
    //                               },
    //                               child: Container(
    //                                   height: 35.v,
    //                                   width: 47.h,
    //                                   padding: EdgeInsets.symmetric(
    //                                       horizontal: 9.h, vertical: 6.v),
    //                                   decoration: AppDecoration.fillBlack9004c1
    //                                       .copyWith(
    //                                           borderRadius: BorderRadiusStyle
    //                                               .roundedBorder10),
    //                                   child: CustomImageView(
    //                                       imagePath: ImageConstant.imgVoteIcon,
    //                                       height: 22.v,
    //                                       width: 27.h,
    //                                       alignment: Alignment.center))),
    //                           Container(
    //                             padding: EdgeInsets.symmetric(vertical: 8.v),
    //                             decoration: AppDecoration.fillBlack9004c1
    //                                 .copyWith(
    //                                     borderRadius:
    //                                         BorderRadiusStyle.roundedBorder10),
    //                             child: Row(
    //                               mainAxisAlignment: MainAxisAlignment.end,
    //                               children: [
    //                                 SizedBox(
    //                                     height: 18.v,
    //                                     width: 94.h,
    //                                     child: Stack(
    //                                         alignment: Alignment.center,
    //                                         children: [
    //                                           Align(
    //                                               alignment: Alignment.center,
    //                                               child: Container(
    //                                                   height: 18.v,
    //                                                   width: 94.h,
    //                                                   decoration:
    //                                                       BoxDecoration())),
    //                                           Align(
    //                                               alignment: Alignment.center,
    //                                               child: Text("lbl_vcash_2000".tr,
    //                                                   style: CustomTextStyles
    //                                                       .labelLargeWhiteA700))
    //                                         ])),
    //                                 Container(
    //                                   height: 18.v,
    //                                   width: 76.h,
    //                                   margin: EdgeInsets.only(left: 10.h),
    //                                   child: Stack(
    //                                       alignment: Alignment.center,
    //                                       children: [
    //                                         Align(
    //                                             alignment: Alignment.center,
    //                                             child: Container(
    //                                                 height: 18.v,
    //                                                 width: 76.h,
    //                                                 decoration: BoxDecoration())),
    //                                         Align(
    //                                             alignment: Alignment.center,
    //                                             child: Text("lbl_bfv_2000".tr,
    //                                                 style: CustomTextStyles
    //                                                     .labelLargeWhiteA700))
    //                                       ]),
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   );
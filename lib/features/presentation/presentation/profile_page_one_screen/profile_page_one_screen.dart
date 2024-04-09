import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:joel_s_application10/features/domain/controllers/profile.dart';
import 'package:joel_s_application10/features/presentation/presentation/subscription_screen/subscription_screen.dart';

import 'widgets/userprofile_item_widget.dart';
import 'controller/profile_page_one_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/appbar_leading_image.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/custom_app_bar.dart';

class ProfilePageOneScreen extends StatelessWidget {
  //
  const ProfilePageOneScreen({
    Key? key,
  }) : super(key: key);

  get onTapAngleRight => null;

  get onTextChanged => null;

  get onArtistsPressed => null;

  get onJudgePressed => null;

  @override
  Widget build(BuildContext context) {
    // final ProfilePageOneController controller =
    //     Get.put(ProfilePageOneController(profileRepo: onTapAngleRight));

    return GetBuilder<ProfilePageOneController>(
      builder: (ctrl) {
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
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
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 25.h, top: 16.v, right: 25.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildProfileBio(ctrl),
                              SizedBox(height: 21.v),
                              Opacity(
                                opacity: 0.9,
                                child: Text(
                                  /* "UserName/NickName",*/
                                  ctrl.users[0].username ?? "",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Opacity(
                                opacity: 0.9,
                                child: Text(
                                  /*"msg_id_abc123456765".tr,*/
                                  ctrl.users[0].id.toString(),
                                  style: CustomTextStyles.titleMediumGray5017,
                                ),
                              ),
                              Opacity(
                                opacity: 0.75,
                                child: Text(ctrl.users[0].role.toString(),
                                    /*"Artist / Judge",*/
                                    style:
                                        // CustomTextStyles.labelLargeLightblueA700,
                                        TextStyle(color: Colors.white)),
                              ),

                              Text("Subscribe as Artiste or Voter?",
                                  style: theme.textTheme.bodyLarge),
                              GestureDetector(
                                onTap: () {
                                  onTapTxtSubscribe();
                                  // Get.to(SubscriptionScreen);
                                  print("tapped");
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("lbl_subscribe".tr,
                                      style: CustomTextStyles
                                          .titleMediumPrimaryContainer),
                                ),
                              ),

                              SizedBox(height: 15.v),
                              // _buildUserProfile(),
                              //TransparentIconContainers(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Handle onTap for the home icon
                                          print("Followers icon tapped");
                                        },
                                        child: TransparentIconContainer(
                                          icon: Icons.home,
                                          text1: ctrl.users.isNotEmpty
                                              ? ctrl.users[0].followers
                                                  .toString()
                                              : '',
                                          text2: ctrl.users.isNotEmpty
                                              ? ctrl.users[0].points.toString()
                                              : '', // Accessing points of the first user
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Handle onTap for the search icon
                                          print("Colle icon tapped");
                                        },
                                        child: TransparentIconContainer(
                                          icon: Icons.search,
                                          text1: ctrl.users[0].favourites
                                              .toString() /*'Collections'*/,
                                          text2: ctrl.users.isNotEmpty
                                              ? ctrl.users[0].points.toString()
                                              : '',

                                          ///*'200'*/,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Handle onTap for the notifications icon
                                          print("Likes icon tapped");
                                        },
                                        child: TransparentIconContainer(
                                          icon: Icons.notifications,
                                          text1: ctrl.users.isNotEmpty
                                              ? ctrl.users[0].mzoneCash
                                                  .toString()
                                              : '' /*'Likes'*/,
                                          text2: ctrl.users.isNotEmpty
                                              ? ctrl.users[0].points.toString()
                                              : '', //
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Handle onTap for the profile icon
                                          print("Points icon tapped");
                                        },
                                        child: TransparentIconContainer(
                                          icon: Icons.person,
                                          text1: ctrl.users[0].virtualCash
                                              .toString(),
                                          text2: ctrl.users.isNotEmpty
                                              ? ctrl.users[0].points.toString()
                                              : '',
                                        ),
                                      ),
                                    ],
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
            ),
          ),
        );
      },
    );
  }
  //Creating Transparent Widget

  /// Section Widget
  Widget _buildProfileBio(ctrl) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 193.v,
        width: 340.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 186.adaptSize,
                width: 186.adaptSize,
                padding: EdgeInsets.all(11.h),
                decoration: AppDecoration.outline2.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder93,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCoolProfilePi,
                  height: 156.adaptSize,
                  width: 156.adaptSize,
                  radius: BorderRadius.circular(78.h),
                  alignment: Alignment.center,
                ),
              ),
            ),
            CustomAppBar(
              height: 35.v,
              leadingWidth: 49.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgAngleRight,
                margin: EdgeInsets.only(left: 25.h, bottom: 11.v),
                onTap: () {
                  // ctrl.onTapAngleRight();
                },
              ),
              actions: [
                AppbarTrailingIconbutton(
                  imagePath: ImageConstant.imgUserShield,
                  margin: EdgeInsets.symmetric(horizontal: 25.h),
                  onTap: () {
                    //ctrl.onTapUserShield();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserProfile() {
    return GetBuilder<ProfilePageOneController>(
      builder: (ctrl) {
        return Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 201.v,
              crossAxisCount: 2,
              mainAxisSpacing: 25.h,
              crossAxisSpacing: 25.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: ctrl.users.length,
            itemBuilder: (context, index) {
              final user = ctrl.users[index];
              // Convert UserModell to UserprofileItemModel
              final userProfileItemModel = userModell(
                // Assuming these properties exist in UserprofileItemModel
                // userIcon: user.profileImage, // Replace with appropriate property
                followerCount:
                    user.followers.length.toString(), // Example conversion
                followerText: user.role.name,
                username: user.username,
                role: user.role,
              );
              return UserprofileItemWidget(userProfileItemModel);
            },
          ),
        );
      },
    );
  }

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
}

class TransparentIconContainer extends StatelessWidget {
  final IconData icon;
  final String text1;
  final String text2;
  const TransparentIconContainer(
      {Key? key, required this.icon, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          icon,
          size: 40,
          color: Colors.blue,
        ),
        SizedBox(height: 8),
        Column(
          children: [
            Text(
              text1,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              text2,
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ]),
    );
  }
}

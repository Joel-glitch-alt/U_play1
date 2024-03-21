import 'widgets/userprofile_item_widget.dart';
import 'controller/profile_page_one_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/appbar_leading_image.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:joel_s_application10/features/presentation/widgets/app_bar/custom_app_bar.dart';

class ProfilePageOneScreen extends StatelessWidget {
  const ProfilePageOneScreen({Key? key}) : super(key: key);

  get onTapAngleRight => null;

  @override
  Widget build(BuildContext context) {
    final ProfilePageOneController controller =
        Get.put(ProfilePageOneController(profileRepo: onTapAngleRight));

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
                              _buildProfileBio(),
                              SizedBox(height: 21.v),
                              Opacity(
                                opacity: 0.9,
                                child: Text(
                                  "msg_username_nickname".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Opacity(
                                opacity: 0.9,
                                child: Text(
                                  "msg_id_abc123456765".tr,
                                  style: CustomTextStyles.titleMediumGray5017,
                                ),
                              ),
                              Opacity(
                                opacity: 0.75,
                                child: Text(
                                  "lbl_artist_judge".tr,
                                  style:
                                      CustomTextStyles.labelLargeLightblueA700,
                                ),
                              ),
                              SizedBox(height: 15.v),
                              _buildUserProfile(),
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

  /// Section Widget
  Widget _buildProfileBio() {
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

  /// Section Widget
  Widget _buildUserProfile() {
    var ctrl;
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
        itemCount: ctrl.ProfilePageOneController.profilePageOneModelObj.value
            .userprofileItemList.value.length,
        itemBuilder: (context, index) {
          var ctrl;
          UserprofileItemModel model = ctrl
              .profilePageOneModelObj.value.userprofileItemList.value[index];
          return UserprofileItemWidget(model);
        },
      ),
    );
  }
}

import 'package:joel_s_application10/features/domain/controllers/profile.dart';

import '../controller/profile_page_one_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<ProfilePageOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 41.h,
        vertical: 35.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => CustomIconButton(
              height: 55.adaptSize,
              width: 55.adaptSize,
              padding: EdgeInsets.all(17.h),
              decoration: IconButtonStyleHelper.fillLightBlueA,
              child: CustomImageView(
                imagePath: userprofileItemModelObj.userIcon!.value,
              ),
            ),
          ),
          SizedBox(height: 28.v),
          Opacity(
            opacity: 0.9,
            child: Obx(
              () => Text(
                userprofileItemModelObj.followerCount!.value,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Obx(
              () => Text(
                userprofileItemModelObj.followerText!.value,
                style: CustomTextStyles.labelLargeGray50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

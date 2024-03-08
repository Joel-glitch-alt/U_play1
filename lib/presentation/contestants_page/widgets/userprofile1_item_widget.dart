import '../controller/contestants_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<ContestantsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.h),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPic,
            height: 20.adaptSize,
            width: 20.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Obx(
                () => Text(
                  userprofile1ItemModelObj.userName!.value,
                  style: CustomTextStyles.labelLargeWhiteA700Medium,
                ),
              ),
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: userprofile1ItemModelObj.searchIcon!.value,
              height: 9.adaptSize,
              width: 9.adaptSize,
              radius: BorderRadius.circular(
                1.h,
              ),
              margin: EdgeInsets.only(
                left: 10.h,
                top: 5.v,
                bottom: 5.v,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

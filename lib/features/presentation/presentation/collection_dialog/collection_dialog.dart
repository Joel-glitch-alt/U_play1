import 'controller/collection_controller.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class CollectionDialog extends StatelessWidget {
  CollectionDialog(this.controller, {Key? key}) : super(key: key);

  CollectionController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 340.h,
        padding: EdgeInsets.symmetric(horizontal: 62.h, vertical: 101.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 114.h,
                  child: Text("msg_you_have_no_collections".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 1.v),
              CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.outlineBlackC,
                  onTap: () {
                    onTapBtnClose();
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgClose)),
              SizedBox(height: 4.v),
              Text("msg_tab_the_plus_icon".tr,
                  style: theme.textTheme.bodySmall),
              SizedBox(height: 1.v),
              Text("msg_note_a_file_should".tr,
                  style: CustomTextStyles.bodySmallPinkA200)
            ]));
  }

  /// Navigates to the previous screen.
  onTapBtnClose() {
    Get.back();
  }
}

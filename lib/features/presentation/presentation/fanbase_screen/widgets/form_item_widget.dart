import 'package:joel_s_application10/features/domain/controllers/fanBase.dart';

import '../controller/fanbase_controller.dart';
import '../models/form_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';

// ignore: must_be_immutable
class FormItemWidget extends StatelessWidget {
  FormItemWidget(
    this.formItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FormItemModel formItemModelObj;

  var controller = Get.find<FanbaseController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 80.v,
          width: 140.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: formItemModelObj.retroMicrophon!.value,
                  height: 80.v,
                  width: 140.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  decoration: AppDecoration.fillBlack9004c1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Obx(
                    () => CustomImageView(
                      imagePath: formItemModelObj.overflowMenu!.value,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

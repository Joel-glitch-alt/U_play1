import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbuttonOne extends StatelessWidget {
  AppbarTrailingIconbuttonOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: OutlineGradientButton(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 1.v,
            right: 1.h,
            bottom: 1.v,
          ),
          strokeWidth: 1.h,
          gradient: LinearGradient(
            begin: Alignment(0.25, 0.06),
            end: Alignment(0.8, 0.87),
            colors: [
              theme.colorScheme.onPrimary,
              appTheme.pinkA200,
            ],
          ),
          corners: Corners(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            child: CustomImageView(
              imagePath: ImageConstant.imgUserAlt40x40,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.black9004c,
                  borderRadius: BorderRadius.circular(20.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.pinkA200.withOpacity(0.3),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        4,
                      ),
                    ),
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGray => BoxDecoration(
        borderRadius: BorderRadius.circular(17.h),
        border: Border.all(
          color: appTheme.gray50,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA700.withOpacity(0.2),
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillPinkA => BoxDecoration(
        color: appTheme.pinkA200.withOpacity(0.2),
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillPurpleA => BoxDecoration(
        color: appTheme.purpleA200.withOpacity(0.2),
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillBlackC => BoxDecoration(
        color: appTheme.black9004c,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillBlackCTL20 => BoxDecoration(
        color: appTheme.black9004c,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlineBlackC => BoxDecoration(
        color: appTheme.gray50.withOpacity(0.15),
        borderRadius: BorderRadius.circular(6.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black9004c.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

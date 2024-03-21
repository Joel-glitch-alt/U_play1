import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber500.withOpacity(0.2),
      );
  static BoxDecoration get fillBlack9004c => BoxDecoration(
        color: appTheme.black9004c.withOpacity(0.02),
      );
  static BoxDecoration get fillBlack9004c1 => BoxDecoration(
        color: appTheme.black9004c,
      );
  static BoxDecoration get fillBlackC => BoxDecoration(
        color: appTheme.black9004c.withOpacity(0.03),
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50.withOpacity(0.15),
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA700,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.25),
      );
  static BoxDecoration get fillWhiteA7001 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.2),
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray40033,
            appTheme.whiteA700.withOpacity(0.2),
          ],
        ),
      );
  static BoxDecoration get gradientLightBlueAToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.lightBlueA700.withOpacity(0.75),
            theme.colorScheme.primary.withOpacity(0.75),
          ],
        ),
      );
  static BoxDecoration get gradientLightblueA700ToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.lightBlueA700.withOpacity(0.65),
            theme.colorScheme.primary.withOpacity(0.65),
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.01, 0.51),
          end: Alignment(1, 0.51),
          colors: [
            appTheme.whiteA700.withOpacity(0.15),
            appTheme.whiteA700.withOpacity(0.05),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -6,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePink => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.pink300,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.whiteA700.withOpacity(0.05),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -6,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outline2 => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder78 => BorderRadius.circular(
        78.h,
      );
  static BorderRadius get circleBorder93 => BorderRadius.circular(
        93.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

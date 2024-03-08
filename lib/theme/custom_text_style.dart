import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray100 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodyLargeGray50 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50.withOpacity(0.62),
      );
  static get bodyLargeff545865 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF545865),
      );
  static get bodyLargefffbf9fa => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFFFBF9FA),
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallGray50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50.withOpacity(0.3),
      );
  static get bodySmallInterWhiteA700 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallPinkA200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.pinkA200.withOpacity(0.3),
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
      );
  static get bodySmallff545865 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF545865),
        fontSize: 10.fSize,
      );
  static get bodySmallfffbf9fa => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFBF9FA),
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineMediumSemiBold => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 28.fSize,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeGray50 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLightblueA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightBlueA700.withOpacity(0.62),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeWhiteA700Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeWhiteA700SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.8),
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 16.fSize,
      );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
        fontSize: 16.fSize,
      );
  static get titleMediumGray5017 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50.withOpacity(0.67),
        fontSize: 17.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleMediumff545865 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF545865),
        fontSize: 16.fSize,
      );
  static get titleMediumfffbf9fa => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFBF9FA),
        fontSize: 16.fSize,
      );
  static get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
      );
  static get titleSmallGray50_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50.withOpacity(0.67),
      );
  static get titleSmallPink300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink300,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

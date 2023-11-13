import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumAbelOnPrimary =>
      theme.textTheme.bodyMedium!.abel.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontSize: 14.fSize,
      );
  static get bodySmallAbyssinicaSILGray700 =>
      theme.textTheme.bodySmall!.abyssinicaSIL.copyWith(
        color: appTheme.gray700,
        fontSize: 8.fSize,
      );
  // Label text style
  static get labelMediumAbhayaLibreMedium =>
      theme.textTheme.labelMedium!.abhayaLibreMedium.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelMediumAbhayaLibreMediumGray50 =>
      theme.textTheme.labelMedium!.abhayaLibreMedium.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
      );
}

extension on TextStyle {
  TextStyle get abel {
    return copyWith(
      fontFamily: 'Abel',
    );
  }

  TextStyle get abhayaLibreExtraBold {
    return copyWith(
      fontFamily: 'Abhaya Libre ExtraBold',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get abyssinicaSIL {
    return copyWith(
      fontFamily: 'Abyssinica SIL',
    );
  }

  TextStyle get abhayaLibreMedium {
    return copyWith(
      fontFamily: 'Abhaya Libre Medium',
    );
  }
}

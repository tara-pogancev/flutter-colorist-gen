// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Colorist Theme Generator
// **************************************************************************

part of 'color_themes.dart';

// **************************************************************************
// AppColorTheme implementation
// **************************************************************************

final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. Please don\'t.');

/// @nodoc
@immutable
mixin _$AppColorThemeGen {
  // Custom theme colors
  Brightness get brightness;
  Color get primary;
  Color get cardBackground;
  Color get cardGradientStart;
  Color get cardGradientEnd;
  Color get canvas;
  Color get text;
  Color get textSecondary;
  Color get textTernary;
  Color get white;

  // Static color theme variables
  // @override
  // Brightness get brightness => throw _privateConstructorUsedError;

  // @override
  // ThemeData get themeData => throw _privateConstructorUsedError;

  // @override
  // ThemeExtension get themeExtension => throw _privateConstructorUsedError;

  // Custom theme colors
  // @override
  // final Color primary;
  // @override
  // final Color cardBackground;
  // @override
  // final Color cardGradientStart;
  // @override
  // final Color cardGradientEnd;
  // @override
  // final Color canvas;
  // @override
  // final Color text;
  // @override
  // final Color textSecondary;
  // @override
  // final Color textTernary;
  // @override
  // final Color white;

  // AppColorThemeGen copyWith({
  //   Brightness? brightness,
  //   Color? primary,
  //   Color? cardBackground,
  //   Color? cardGradientStart,
  //   Color? cardGradientEnd,
  //   Color? canvas,
  //   Color? text,
  //   Color? textSecondary,
  //   Color? textTernary,
  //   Color? white,
  //   ThemeData? themeData,
  // }) {
  //   return AppColorThemeGen(
  //     brightness: brightness ?? this.brightness,
  //     primary: primary ?? this.primary,
  //     cardBackground: cardBackground ?? this.cardBackground,
  //     cardGradientStart: cardGradientStart ?? this.cardGradientStart,
  //     cardGradientEnd: cardGradientEnd ?? this.cardGradientEnd,
  //     canvas: canvas ?? this.canvas,
  //     text: text ?? this.text,
  //     textSecondary: textSecondary ?? this.textSecondary,
  //     textTernary: textTernary ?? this.textTernary,
  //     white: white ?? this.white,
  //     themeData: themeData ?? this.themeData,
  //   );
  // }

  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is AppColorThemeGen &&
  //         runtimeType == other.runtimeType &&
  //         brightness == other.brightness &&
  //         primary == other.primary &&
  //         cardBackground == other.cardBackground &&
  //         cardGradientStart == other.cardGradientStart &&
  //         cardGradientEnd == other.cardGradientEnd &&
  //         canvas == other.canvas &&
  //         text == other.text &&
  //         textSecondary == other.textSecondary &&
  //         textTernary == other.textTernary &&
  //         white == other.white;

  // @override
  // int get hashCode => Object.hash(
  //   brightness,
  //   primary,
  //   cardBackground,
  //   cardGradientStart,
  //   cardGradientEnd,
  //   canvas,
  //   text,
  //   textSecondary,
  //   textTernary,
  //   white,
  // );

  // @override
  // String toString() => 'AppColorTheme($brightness)';
}

class _AppColorTheme implements AppColorTheme {
  @override 
 final Brightness  brightness;
 final Color  primary;
 final Color  cardBackground;
 final Color  cardGradientStart;
 final Color  cardGradientEnd;
 final Color  canvas;
 final Color  text;
 final Color  textSecondary;
 final Color  textTernary;
 final Color  white;

   factory const _AppColorTheme({
    required this.brightness,
    required this.primary,
    required this.cardBackground,
    required this.cardGradientStart,
    required this.cardGradientEnd,
    required this.canvas,
    required this.text,
    required this.textSecondary,
    required this.textTernary,
    required this.white,
  });

  @override
  ThemeExtension get themeExtension => throw UnimplementedError();
}

// **************************************************************************
// ThemeExtension adapter for Material integration
// **************************************************************************

@immutable
class AppColorThemeExtension extends ThemeExtension<AppColorThemeExtension> {
  final _$AppColorThemeGen data;

  const AppColorThemeExtension(this.data);

  @override
  AppColorThemeExtension copyWith({_$AppColorThemeGen? data}) => AppColorThemeExtension(data ?? this.data);

  @override
  AppColorThemeExtension lerp(covariant ThemeExtension<AppColorThemeExtension>? other, double t) {
    if (other is! AppColorThemeExtension) return this;
    return this; // no lerp support for now
  }
}

// **************************************************************************
// Context accessors
// **************************************************************************

extension AppColorThemeX on BuildContext {
  _$AppColorThemeGen get colors => Theme.of(this).extension<AppColorThemeExtension>()!.data;
}

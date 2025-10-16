// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// Colorist Theme Generator
// **************************************************************************

part of 'color_themes.dart';

// **************************************************************************
// AppColorTheme implementation
// **************************************************************************

/// @nodoc
@immutable
mixin _$AppColorTheme implements ColorThemeSchema {
  // Custom theme colors
  Color get primary;
  Color get cardBackground;
  Color get cardGradientStart;
  Color get cardGradientEnd;
  Color get canvas;
  Color get text;
  Color get textSecondary;
  Color get textTernary;
  Color get white;
}

/// @nodoc
@immutable
class _AppColorTheme implements AppColorTheme {
  @override
  final Color primary;
  @override
  final Color cardBackground;
  @override
  final Color cardGradientStart;
  @override
  final Color cardGradientEnd;
  @override
  final Color canvas;
  @override
  final Color text;
  @override
  final Color textSecondary;
  @override
  final Color textTernary;
  @override
  final Color white;

  const _AppColorTheme({
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
  final Brightness brightness;

  @override
  ThemeExtension get themeExtension => throw UnimplementedError();

  @override
  ThemeData get themeData => MaterialAppTheme.getForColorTheme(forestTheme);
}

// **************************************************************************
// ThemeExtension adapter for Material integration
// **************************************************************************

@immutable
class AppColorThemeExtension extends ThemeExtension<AppColorThemeExtension> {
  // Custom theme colors
  final Color primary;
  final Color cardBackground;
  final Color cardGradientStart;
  final Color cardGradientEnd;
  final Color canvas;
  final Color text;
  final Color textSecondary;
  final Color textTernary;
  final Color white;

  const AppColorThemeExtension({
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
  AppColorThemeExtension copyWith({AppColorTheme? data}) => AppColorThemeExtension(
    primary: data?.primary ?? primary,
    cardBackground: data?.cardBackground ?? cardBackground,
    cardGradientStart: data?.cardGradientStart ?? cardGradientStart,
    cardGradientEnd: data?.cardGradientEnd ?? cardGradientEnd,
    canvas: data?.canvas ?? canvas,
    text: data?.text ?? text,
    textSecondary: data?.textSecondary ?? textSecondary,
    textTernary: data?.textTernary ?? textTernary,
    white: data?.white ?? white,
  );

  @override
  AppColorThemeExtension lerp(covariant ThemeExtension<AppColorThemeExtension>? other, double t) {
    if (other is! AppColorThemeExtension) {
      return this;
    }
    return AppColorThemeExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      cardGradientStart: Color.lerp(cardGradientStart, other.cardGradientStart, t)!,
      cardGradientEnd: Color.lerp(cardGradientEnd, other.cardGradientEnd, t)!,
      canvas: Color.lerp(canvas, other.canvas, t)!,
      text: Color.lerp(text, other.text, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTernary: Color.lerp(textTernary, other.textTernary, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }
}

// **************************************************************************
// Context extension for color access
// **************************************************************************

extension AppColorThemeX on BuildContext {
  AppColorThemeExtension get colors => Theme.of(this).extension<AppColorThemeExtension>() as AppColorThemeExtension;
}

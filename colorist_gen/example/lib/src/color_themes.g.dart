// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'color_themes.dart';

// **************************************************************************
// ColorThemeGenerator
// **************************************************************************

// Theme: main (light)

@immutable
class MainLightThemeGenerated extends ThemeExtension<MainLightThemeGenerated> {
  final Color canvas;
  final Color cardBackground;
  final Color cardGradientEnd;
  final Color cardGradientStart;
  final Color primary;
  final Color text;
  final Color textSecondary;
  final Color textTernary;
  final Color white;

  const MainLightThemeGenerated({
    required this.canvas,
    required this.cardBackground,
    required this.cardGradientEnd,
    required this.cardGradientStart,
    required this.primary,
    required this.text,
    required this.textSecondary,
    required this.textTernary,
    required this.white,
  });

  @override
  MainLightThemeGenerated copyWith({
    Color? canvas,
    Color? cardBackground,
    Color? cardGradientEnd,
    Color? cardGradientStart,
    Color? primary,
    Color? text,
    Color? textSecondary,
    Color? textTernary,
    Color? white,
  }) => MainLightThemeGenerated(
    canvas: canvas ?? this.canvas,
    cardBackground: cardBackground ?? this.cardBackground,
    cardGradientEnd: cardGradientEnd ?? this.cardGradientEnd,
    cardGradientStart: cardGradientStart ?? this.cardGradientStart,
    primary: primary ?? this.primary,
    text: text ?? this.text,
    textSecondary: textSecondary ?? this.textSecondary,
    textTernary: textTernary ?? this.textTernary,
    white: white ?? this.white,
  );

  @override
  MainLightThemeGenerated lerp(
    ThemeExtension<MainLightThemeGenerated>? other,
    double t,
  ) {
    if (other is! MainLightThemeGenerated) return this;
    return MainLightThemeGenerated(
      canvas: Color.lerp(canvas, other.canvas, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      cardGradientEnd: Color.lerp(cardGradientEnd, other.cardGradientEnd, t)!,
      cardGradientStart: Color.lerp(
        cardGradientStart,
        other.cardGradientStart,
        t,
      )!,
      primary: Color.lerp(primary, other.primary, t)!,
      text: Color.lerp(text, other.text, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTernary: Color.lerp(textTernary, other.textTernary, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }

  static MainLightThemeGenerated of(BuildContext context) =>
      Theme.of(context).extension<MainLightThemeGenerated>()!;
}

extension AppColorThemeX on BuildContext {
  AppColorTheme get colors => this.themeManager.currentTheme as AppColorTheme;
}

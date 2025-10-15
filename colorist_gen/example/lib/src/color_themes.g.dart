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
class MainAppThemeExt extends ThemeExtension<MainAppThemeExt> {
  final Color canvas;
  final Color cardBackground;
  final Color cardGradientEnd;
  final Color cardGradientStart;
  final Color primary;
  final Color text;
  final Color textSecondary;
  final Color textTernary;
  final Color white;

  const MainAppThemeExt({
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
  MainAppThemeExt copyWith({
    Color? canvas,
    Color? cardBackground,
    Color? cardGradientEnd,
    Color? cardGradientStart,
    Color? primary,
    Color? text,
    Color? textSecondary,
    Color? textTernary,
    Color? white,
  }) => MainAppThemeExt(
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
  MainAppThemeExt lerp(
    ThemeExtension<MainAppThemeExt>? other,
    double t,
  ) {
    if (other is! MainAppThemeExt) return this;
    return MainAppThemeExt(
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

  static MainAppThemeExt of(BuildContext context) =>
      Theme.of(context).extension<MainAppThemeExt>()!;
}

extension AppColorThemeX on BuildContext {
  MainAppThemeExt get colors => this.theme.extension<MainAppThemeExt>()!;
}

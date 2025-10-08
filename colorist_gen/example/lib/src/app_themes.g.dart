// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'app_themes.dart';

// **************************************************************************
// ColorThemeGenerator
// **************************************************************************

// Theme: main (light)

@immutable
class MainLightThemeGenerated extends ThemeExtension<MainLightThemeGenerated> {
  final Color canvas;
  final Color cardBackground;
  final Color textPrimary;
  final Color accent;

  const MainLightThemeGenerated({
    required this.canvas,
    required this.cardBackground,
    required this.textPrimary,
    required this.accent,
  });

  @override
  MainLightThemeGenerated copyWith({
    Color? canvas,
    Color? cardBackground,
    Color? textPrimary,
    Color? accent,
  }) => MainLightThemeGenerated(
    canvas: canvas ?? this.canvas,
    cardBackground: cardBackground ?? this.cardBackground,
    textPrimary: textPrimary ?? this.textPrimary,
    accent: accent ?? this.accent,
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
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
    );
  }

  static MainLightThemeGenerated of(BuildContext context) =>
      Theme.of(context).extension<MainLightThemeGenerated>()!;
}

// Theme: main (dark)

@immutable
class MainDarkThemeGenerated extends ThemeExtension<MainDarkThemeGenerated> {
  final Color canvas;
  final Color cardBackground;
  final Color textPrimary;
  final Color accent;

  const MainDarkThemeGenerated({
    required this.canvas,
    required this.cardBackground,
    required this.textPrimary,
    required this.accent,
  });

  @override
  MainDarkThemeGenerated copyWith({
    Color? canvas,
    Color? cardBackground,
    Color? textPrimary,
    Color? accent,
  }) => MainDarkThemeGenerated(
    canvas: canvas ?? this.canvas,
    cardBackground: cardBackground ?? this.cardBackground,
    textPrimary: textPrimary ?? this.textPrimary,
    accent: accent ?? this.accent,
  );

  @override
  MainDarkThemeGenerated lerp(
    ThemeExtension<MainDarkThemeGenerated>? other,
    double t,
  ) {
    if (other is! MainDarkThemeGenerated) return this;
    return MainDarkThemeGenerated(
      canvas: Color.lerp(canvas, other.canvas, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
    );
  }

  static MainDarkThemeGenerated of(BuildContext context) =>
      Theme.of(context).extension<MainDarkThemeGenerated>()!;
}

// Theme: premium (dark)

@immutable
class PremiumDarkThemeGenerated
    extends ThemeExtension<PremiumDarkThemeGenerated> {
  final Color canvas;
  final Color cardBackground;
  final Color textPrimary;
  final Color accent;

  const PremiumDarkThemeGenerated({
    required this.canvas,
    required this.cardBackground,
    required this.textPrimary,
    required this.accent,
  });

  @override
  PremiumDarkThemeGenerated copyWith({
    Color? canvas,
    Color? cardBackground,
    Color? textPrimary,
    Color? accent,
  }) => PremiumDarkThemeGenerated(
    canvas: canvas ?? this.canvas,
    cardBackground: cardBackground ?? this.cardBackground,
    textPrimary: textPrimary ?? this.textPrimary,
    accent: accent ?? this.accent,
  );

  @override
  PremiumDarkThemeGenerated lerp(
    ThemeExtension<PremiumDarkThemeGenerated>? other,
    double t,
  ) {
    if (other is! PremiumDarkThemeGenerated) return this;
    return PremiumDarkThemeGenerated(
      canvas: Color.lerp(canvas, other.canvas, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
    );
  }

  static PremiumDarkThemeGenerated of(BuildContext context) =>
      Theme.of(context).extension<PremiumDarkThemeGenerated>()!;
}

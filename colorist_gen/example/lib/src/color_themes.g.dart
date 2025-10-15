// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ColorThemeGenerator
// **************************************************************************

part of 'color_themes.dart';

// **************************************************************************
// _AppColorTheme implementation
// **************************************************************************

@immutable
class AppColorTheme implements _AppColorTheme {
  const AppColorTheme({
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

  final Brightness brightness;

  final Color primary;

  final Color cardBackground;

  final Color cardGradientStart;

  final Color cardGradientEnd;

  final Color canvas;

  final Color text;

  final Color textSecondary;

  final Color textTernary;

  final Color white;

  @override
  ThemeData toMaterialTheme() => MaterialAppTheme.getForColorTheme(this);

  @override
  AppColorTheme copyWith({
    Brightness? brightness,
    Color? primary,
    Color? cardBackground,
    Color? cardGradientStart,
    Color? cardGradientEnd,
    Color? canvas,
    Color? text,
    Color? textSecondary,
    Color? textTernary,
    Color? white,
  }) {
    return AppColorTheme(
      brightness: brightness ?? this.brightness,
      primary: primary ?? this.primary,
      cardBackground: cardBackground ?? this.cardBackground,
      cardGradientStart: cardGradientStart ?? this.cardGradientStart,
      cardGradientEnd: cardGradientEnd ?? this.cardGradientEnd,
      canvas: canvas ?? this.canvas,
      text: text ?? this.text,
      textSecondary: textSecondary ?? this.textSecondary,
      textTernary: textTernary ?? this.textTernary,
      white: white ?? this.white,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppColorTheme &&
          runtimeType == other.runtimeType &&
          brightness == other.brightness &&
          primary == other.primary &&
          cardBackground == other.cardBackground &&
          cardGradientStart == other.cardGradientStart &&
          cardGradientEnd == other.cardGradientEnd &&
          canvas == other.canvas &&
          text == other.text &&
          textSecondary == other.textSecondary &&
          textTernary == other.textTernary &&
          white == other.white;

  @override
  int get hashCode => Object.hash(
    brightness,
    primary,
    cardBackground,
    cardGradientStart,
    cardGradientEnd,
    canvas,
    text,
    textSecondary,
    textTernary,
    white,
  );

  @override
  String toString() =>
      'AppColorTheme($brightness, $primary, $cardBackground, '
      '$cardGradientStart, $cardGradientEnd, $canvas, $text, '
      '$textSecondary, $textTernary, $white)';
}

// **************************************************************************
// ThemeExtension adapter for Material integration
// **************************************************************************

@immutable
class AppColorThemeExtension extends ThemeExtension<AppColorThemeExtension> {
  final AppColorTheme data;

  const AppColorThemeExtension(this.data);

  @override
  AppColorThemeExtension copyWith({AppColorTheme? data}) => AppColorThemeExtension(data ?? this.data);

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
  AppColorTheme get colors => Theme.of(this).extension<AppColorThemeExtension>()!.data;
}

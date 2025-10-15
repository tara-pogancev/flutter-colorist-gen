import 'package:colorist_gen/colorist_gen.dart';
import 'package:example/src/material_app_theme.dart';
import 'package:flutter/material.dart';

part 'color_themes.g.dart';

@ColorTheme()
abstract class AppColorTheme extends ColorThemeSchema with _$AppColorThemeGen {
  const factory AppColorTheme({
    required Brightness brightness,
    required Color primary,
    required Color cardBackground,
    required Color cardGradientStart,
    required Color cardGradientEnd,
    required Color canvas,
    required Color text,
    required Color textSecondary,
    required Color textTernary,
    required Color white,
  }) = _AppColorTheme;

  @override
  ThemeData get themeData => MaterialAppTheme.getForColorTheme(forestTheme);
}

final forestTheme = const AppColorTheme(
  brightness: Brightness.dark,
  primary: Color(0xFF2F5D3E),
  cardBackground: Color(0xFF142315),
  cardGradientStart: Color(0xFF203C2A),
  cardGradientEnd: Color(0xFF112015),
  canvas: Color(0xFF0F1B10),
  text: Color(0xFFEBF0E8),
  textSecondary: Color(0xFF9DBA9D),
  textTernary: Color(0xFF6F9C73),
  white: Colors.white,
);

import 'package:colorist_gen/colorist_gen.dart';
import 'package:flutter/material.dart';

part 'app_themes.g.dart';

enum ColoristThemes { main, premium }

@ColorThemeSchema(description: 'Defines shared color tokens across themes.')
abstract class AppColorTheme {
  Color get primary;
  Color get cardGradientStart;
  Color get cardGradientEnd;
  Color get text;
  Color get canvas;
  Color get cardBackground;
  Color get textSecondary;
  Color get textTernary;
  Color get white;
}

@ColorTheme(name: 'main')
class MainLightTheme extends AppColorTheme {
  @override
  Color get canvas => const Color.fromARGB(255, 195, 203, 249);

  @override
  Color get cardBackground => const Color.fromARGB(255, 245, 225, 221);

  @override
  Color get cardGradientEnd => const Color.fromARGB(255, 83, 85, 199);

  @override
  Color get cardGradientStart => const Color.fromARGB(255, 55, 97, 195);

  @override
  Color get primary => const Color.fromARGB(255, 80, 135, 237);

  @override
  Color get text => const Color.fromARGB(255, 16, 23, 46);

  @override
  Color get textSecondary => const Color.fromARGB(255, 41, 49, 108);

  @override
  Color get textTernary => const Color.fromARGB(255, 49, 65, 183);

  @override
  Color get white => const Color.fromARGB(255, 240, 241, 248);
}

// @ColorTheme(namColor.fromARGB(255, 255, 255, 255) MainDarkTheme extends AppColorTheme {
//   @override
//   final canvas = const Color(0xFF121016);
//   @override
//   final cardBackground = const Color(0xFF1E1A22);
//   @override
//   final textPrimary = const Color(0xFFEAE6E1);
//   @override
//   final accent = const Color(0xFFB693F2);
// }

// @ColorTheme(name: 'premium', isDarkTheme: true)
// class PremiumDarkTheme extends AppColorTheme {
//   @override
//   final canvas = const Color.fromARGB(255, 71, 6, 9);
//   @override
//   final cardBackground = const Color.fromARGB(255, 100, 7, 15);
//   @override
//   final textPrimary = const Color.fromARGB(255, 120, 230, 238);
//   @override
//   final accent = const Color(0xFFB693F2);
// }

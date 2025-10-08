import 'package:colorist_gen/colorist_gen.dart';
import 'package:flutter/material.dart';

part 'app_themes.g.dart';

enum ColoristThemes { main, premium }

@ColorThemeSchema(description: 'Defines shared color tokens across themes.')
abstract class AppColorTheme {
  Color get canvas;
  Color get cardBackground;
  Color get textPrimary;
  Color get accent;
}

@ColorTheme(name: 'main')
class MainLightTheme extends AppColorTheme {
  @override
 final canvas = const Color(0xFFF8F6F2);
  @override
  final cardBackground = const Color(0xFFFFFFFF);
  @override
  final textPrimary = const Color(0xFF22201E);
  @override
  final accent = const Color(0xFF6D4C9B);
}

@ColorTheme(name: 'main', isDarkTheme: true)
class MainDarkTheme extends AppColorTheme {
  @override
  final canvas = const Color(0xFF121016);
  @override
  final cardBackground = const Color(0xFF1E1A22);
  @override
  final textPrimary = const Color(0xFFEAE6E1);
  @override
  final accent = const Color(0xFFB693F2);
}

@ColorTheme(name: 'premium', isDarkTheme: true)
class PremiumDarkTheme extends AppColorTheme {
  @override
  final canvas = const Color.fromARGB(255, 71, 6, 9);
  @override
  final cardBackground = const Color.fromARGB(255, 100, 7, 15);
  @override
  final textPrimary = const Color.fromARGB(255, 120, 230, 238);
  @override
  final accent = const Color(0xFFB693F2);
}

import 'package:colorist_gen/colorist_gen.dart';
import 'package:example/src/material_app_theme.dart';
import 'package:flutter/material.dart';

part 'color_themes.g.dart';

abstract class AppColorTheme extends ColorThemeSchema {
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
  Brightness get brightness => Brightness.light;

  @override
  ThemeData get data => MaterialAppTheme.getForColorTheme(this);

  @override
  Color get canvas => const Color.fromARGB(255, 195, 203, 249);

  @override
  Color get cardBackground => const Color.fromARGB(255, 245, 225, 221);

  @override
  Color get cardGradientEnd => const Color.fromARGB(255, 83, 85, 199);

  @override
  Color get cardGradientStart => const Color.fromARGB(255, 55, 97, 195);

  @override
  Color get primary => const Color.fromARGB(255, 56, 182, 24);

  @override
  Color get text => const Color.fromARGB(255, 16, 23, 46);

  @override
  Color get textSecondary => const Color.fromARGB(255, 41, 49, 108);

  @override
  Color get textTernary => const Color.fromARGB(255, 49, 65, 183);

  @override
  Color get white => const Color.fromARGB(255, 240, 241, 248);
}

@ColorTheme(name: 'main')
class MainDarkTheme extends AppColorTheme {
  @override
  Brightness get brightness => Brightness.dark;

  @override
  ThemeData get data => MaterialAppTheme.getForColorTheme(this);

  @override
  Color get canvas => const Color.fromARGB(255, 7, 10, 31);

  @override
  Color get cardBackground => const Color.fromARGB(255, 78, 50, 44);

  @override
  Color get cardGradientEnd => const Color.fromARGB(255, 130, 132, 238);

  @override
  Color get cardGradientStart => const Color.fromARGB(255, 163, 183, 228);

  @override
  Color get primary => const Color.fromARGB(255, 24, 78, 179);

  @override
  Color get text => const Color.fromARGB(255, 191, 201, 236);

  @override
  Color get textSecondary => const Color.fromARGB(255, 131, 139, 197);

  @override
  Color get textTernary => const Color.fromARGB(255, 98, 110, 199);

  @override
  Color get white => const Color.fromARGB(255, 10, 13, 36);
}

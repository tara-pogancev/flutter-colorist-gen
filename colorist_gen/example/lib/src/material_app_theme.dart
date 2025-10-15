import 'package:example/src/color_themes.dart';
import 'package:flutter/material.dart';

class MaterialAppTheme {
  static ThemeData getForColorTheme(AppColorTheme theme) {
    return ThemeData(
      brightness: theme.brightness,
      colorSchemeSeed: theme.primary,
      extensions: [
        theme.toExtension(),
      ],
    );
  }
}

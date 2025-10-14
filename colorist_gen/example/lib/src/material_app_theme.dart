import 'package:example/src/app_themes.dart';
import 'package:flutter/material.dart';

final coloristMaterialAppTheme = ThemeData(
  brightness: Brightness.light,
  colorSchemeSeed: MainLightTheme().primary,
);

final coloristMaterialAppThemeDark = ThemeData(
  brightness: Brightness.dark,
  colorSchemeSeed: MainLightTheme().primary,
);

import 'package:example/src/app_themes.dart';
import 'package:flutter/material.dart';

extension ThemeContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  AppColorTheme get colors => MainLightTheme();
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Schema for color themes
///
/// All color theme classes must implement this schema, as it is the starting
/// point for managing theming.
///
/// By default, it includes:
/// - [brightness]: A [Brightness] value indicating whether the theme is light or dark.
/// - [themeData]: A [ThemeData] object that can be used to apply a Material theme to a Flutter app.
/// - [themeExtension]: A [ThemeExtension] for adding the theme class itself as an extension. This
/// is used for easily mapping colors
abstract class ColorThemeSchema {
  Brightness get brightness;
  ThemeData? get themeData;
  ThemeExtension<dynamic> get themeExtension;
  CupertinoThemeData? get cupertinoThemeData;
}

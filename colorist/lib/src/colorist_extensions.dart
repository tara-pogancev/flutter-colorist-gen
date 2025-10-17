import 'package:colorist_gen/colorist_gen.dart';
import 'package:flutter/material.dart';

extension ContextThemeX on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;

  ThemeManagerController get themeManager => ThemeManager.of(this);
}

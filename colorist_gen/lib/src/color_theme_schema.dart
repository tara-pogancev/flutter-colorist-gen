import 'package:flutter/material.dart';

abstract class ColorThemeSchema {
  Brightness get brightness;
  ThemeData get data;
  ThemeExtension<dynamic> toExtension();
}

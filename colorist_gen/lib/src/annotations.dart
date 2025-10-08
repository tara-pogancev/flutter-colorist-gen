import 'package:meta/meta.dart'; // Provides @immutable

/// Use on an abstract class that defines the color theme schema.
/// Example:
/// ```dart
/// @ColorThemeSchema()
/// abstract class AppThemeColors {
///   Color get background;
///   Color get surface;
///   Color get primary;
/// }
/// ```
@immutable
class ColorThemeSchema {
  /// Optional short description used for generated docs.
  final String? description;

  const ColorThemeSchema({this.description});
}

/// Use on concrete classes that implement a schema. `name` groups palettes
/// (e.g. 'main', 'amber'); `isDarkTheme` denotes if this theme is for dark values.
/// Example:
/// ```dart
/// @ColorTheme(name: 'main', isDarkTheme: true)
/// class MainLightTheme extends AppThemeColors { ... }
/// ```
@immutable
class ColorTheme {
  /// Optional group/name for this palette (defaults the extended class
  /// name if none is provided).
  final String? name;

  /// Defining whether this is a dark theme (defaults to false).
  final bool isDarkTheme;

  const ColorTheme({this.name, this.isDarkTheme = false});
}

import 'package:meta/meta.dart'; // Provides @immutable

/// Use on concrete classes that implement a schema. `name` groups palettes
/// (e.g. 'main', 'amber');
/// Example:
/// ```dart
/// @ColorTheme(name: 'main')
/// class MainLightTheme extends AppThemeColors { ... }
/// ```
@immutable
class ColorTheme {
  /// Optional group/name for this palette (defaults the extended class
  /// name if none is provided).
  final String? name;

  const ColorTheme({this.name});
}

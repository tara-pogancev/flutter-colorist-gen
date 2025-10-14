import 'package:build/build.dart';
import 'package:colorist_gen/colorist_gen.dart';
import 'package:source_gen/source_gen.dart';

class ColorThemeGenerator extends GeneratorForAnnotation<ColorTheme> {
  @override
  generateForAnnotatedElement(
    dynamic element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final className = element.name;
    final themeName = annotation.read('name').stringValue;

    // Theme Brightness
    // final isDarkTheme =
    //     element.fields.firstWhere((f) => f.name == "brightness");

    // Collect all Color fields
    final colorFields = element.fields
        .where((f) =>
            !f.isStatic &&
            f.type.getDisplayString(withNullability: false) == 'Color')
        .map((f) => f.name)
        .toList();

    final buffer = StringBuffer();

    buffer.writeln('// Theme: $themeName ()\n');

    // Class name for generated ThemeExtension
    final themeClassName = '${className}Generated';

    buffer.writeln('@immutable');
    buffer.writeln(
        'class $themeClassName extends ThemeExtension<$themeClassName> {');

    // Fields
    for (var f in colorFields) {
      buffer.writeln('  final Color $f;');
    }
    buffer.writeln('');

    // Constructor
    buffer.write('  const $themeClassName({');
    buffer.write(colorFields.map((f) => 'required this.$f').join(', '));
    buffer.writeln('});\n');

    // copyWith
    buffer.writeln('  @override');
    buffer.writeln('  $themeClassName copyWith({');
    for (var f in colorFields) {
      buffer.writeln('    Color? $f,');
    }
    buffer.writeln('  }) => $themeClassName(');
    for (var f in colorFields) {
      buffer.writeln('    $f: $f ?? this.$f,');
    }
    buffer.writeln('  );\n');

    // lerp
    buffer.writeln('  @override');
    buffer.writeln(
        '  $themeClassName lerp(ThemeExtension<$themeClassName>? other, double t) {');
    buffer.writeln('    if (other is! $themeClassName) return this;');
    buffer.writeln('    return $themeClassName(');
    for (var f in colorFields) {
      buffer.writeln('      $f: Color.lerp($f, other.$f, t)!,');
    }
    buffer.writeln('    );');
    buffer.writeln('  }\n');

    // of(context)
    buffer.writeln('  static $themeClassName of(BuildContext context) =>');
    buffer.writeln('      Theme.of(context).extension<$themeClassName>()!;');

    buffer.writeln('}');

    // End of theme class

    return buffer.toString();
  }
}

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:colorist_annotations/colorist_annotations.dart';
import 'package:colorist_builder/src/getter_source_extraction.dart';
import 'package:source_gen/source_gen.dart';

const _colorChecker = TypeChecker.fromUrl('dart:ui#Color');

class ColoristThemeGenerator extends GeneratorForAnnotation<ColorTheme> {
  @override
  generateForAnnotatedElement(
    dynamic element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    if (element is! ClassElement) {
      throw InvalidGenerationSourceError(
        'ColorTheme annotationcan only be used on classes.',
        element: element,
      );
    }

    final className = element.name;

    // Find the factory constructor
    final factoryCtor = element.constructors.firstWhere(
      (ctor) => ctor.isFactory,
      orElse: () => throw Exception(
        'No factory constructor found for color theme $className.',
      ),
    );

    final colorFields = factoryCtor.type.formalParameters
        .where((p) => _colorChecker.isExactlyType(p.type))
        .map((p) => p.name)
        .toList();

    final buffer = StringBuffer();

    // === FILE HEADER ===
    buffer.writeln(
        '// **************************************************************************');
    buffer.writeln('// $className implementation');
    buffer.writeln(
        '// **************************************************************************\n');

    // === MIXIN ===
    buffer.writeln('/// @nodoc');
    buffer.writeln('@immutable');
    buffer.writeln('mixin _\$$className implements ColorThemeSchema {');
    buffer.writeln('  // Custom theme colors');
    for (final f in colorFields) {
      buffer.writeln('  Color get $f;');
    }
    buffer.writeln('}\n');

    // === IMPLEMENTATION CLASS ===
    final implClass = '_$className';
    final extName = '${className}Extension';

    buffer.writeln('/// @nodoc');
    buffer.writeln('@immutable');
    buffer.writeln('class $implClass implements $className {');

    // Fields
    for (final f in colorFields) {
      buffer.writeln('  @override');
      buffer.writeln('  final Color $f;');
    }

    buffer.writeln('\n  const $implClass({');
    buffer.writeln('    required this.brightness,');
    for (final f in colorFields) {
      buffer.writeln('    required this.$f,');
    }
    buffer.writeln('  });\n');

    buffer.writeln('  @override');
    buffer.writeln('  final Brightness brightness;\n');

    // themeExtension
    buffer.writeln('  @override');
    buffer.writeln('  ThemeExtension get themeExtension => $extName(');
    for (final f in colorFields) {
      buffer.writeln('    $f: $f,');
    }
    buffer.writeln('  );\n');

    // getters
    for (var getter in element.getters) {
      final offset = getter.firstFragment.offset;
      final getterType = getter.returnType.getDisplayString();

      String getterSource = getter
          .firstFragment.libraryFragment.source.contents.data
          .substring(offset);

      getterSource = extractGetterBodyFromDeclaration(getterSource);

      buffer.writeln('  $getterType get $getterSource');
      buffer.writeln('\n');
    }

    buffer.writeln('\n}\n');

    // === THEME EXTENSION ===
    buffer.writeln(
        '// **************************************************************************');
    buffer.writeln('// ThemeExtension adapter for Material integration');
    buffer.writeln(
        '// **************************************************************************\n');

    buffer.writeln('@immutable');
    buffer.writeln('class $extName extends ThemeExtension<$extName> {');
    buffer.writeln('  // Custom theme colors');
    for (final f in colorFields) {
      buffer.writeln('  final Color $f;');
    }

    buffer.writeln('\n  const $extName({');
    for (final f in colorFields) {
      buffer.writeln('    required this.$f,');
    }
    buffer.writeln('  });\n');

    // copyWith
    buffer.writeln('  @override');
    buffer.writeln('  $extName copyWith({$className? data}) => $extName(');
    for (final f in colorFields) {
      buffer.writeln('    $f: data?.$f ?? $f,');
    }
    buffer.writeln('  );\n');

    // lerp
    buffer.writeln('  @override');
    buffer.writeln(
        '  $extName lerp(covariant ThemeExtension<$extName>? other, double t) {');
    buffer.writeln('    if (other is! $extName) {');
    buffer.writeln('      return this;');
    buffer.writeln('    }');
    buffer.writeln('    return $extName(');
    for (final f in colorFields) {
      buffer.writeln('      $f: Color.lerp($f, other.$f, t)!,');
    }
    buffer.writeln('    );');
    buffer.writeln('  }');
    buffer.writeln('}\n');

    // === CONTEXT EXTENSION ===
    buffer.writeln(
        '// **************************************************************************');
    buffer.writeln('// Context extension for color access');
    buffer.writeln(
        '// Use \'context.colors\' to access active colors defined in $className');
    buffer.writeln(
        '// **************************************************************************\n');

    buffer.writeln('extension ${className}BuildContextX on BuildContext {');
    buffer.writeln('  $extName get colors =>');
    buffer.writeln('      Theme.of(this).extension<$extName>() as $extName;');
    buffer.writeln('}\n');

    return buffer.toString();
  }
}

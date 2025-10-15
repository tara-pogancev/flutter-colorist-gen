import 'package:colorist_gen/colorist_gen.dart';
import 'package:flutter/material.dart';

class ThemeManager<T extends ColorThemeSchema> extends StatefulWidget {
  const ThemeManager(
      {super.key,
      required this.themes,
      required this.builder,
      this.initialTheme,
      this.initialBrightness});

  final Widget Function(ThemeData curentTheme) builder;
  final List<T> themes;
  final T? initialTheme;
  final Brightness? initialBrightness;

  static ThemeManagerController of(BuildContext context) {
    final inherited =
        context.dependOnInheritedWidgetOfExactType<_InheritedThemeManager>();
    assert(inherited != null, 'No ThemeManager found in context');
    return inherited!.controller;
  }

  @override
  State<ThemeManager<T>> createState() => _ThemeManagerState<T>();
}

class _ThemeManagerState<T extends ColorThemeSchema>
    extends State<ThemeManager<T>> {
  late T _currentTheme;
  late Brightness _brightness;

  @override
  void initState() {
    super.initState();
    _currentTheme = widget.initialTheme ?? widget.themes.first;
    _brightness = widget.initialBrightness ?? Brightness.light;
  }

  void setTheme(T theme) {
    setState(() => _currentTheme = theme);
  }

  void setBrightness(Brightness brightness) {
    setState(() => _brightness = brightness);
  }

  void toggleBrightness() {
    setBrightness(
      _brightness == Brightness.light ? Brightness.dark : Brightness.light,
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = ThemeManagerController<T>._(
      currentTheme: _currentTheme,
      brightness: _brightness,
      setTheme: setTheme,
      setBrightness: setBrightness,
      toggleBrightness: toggleBrightness,
      themes: widget.themes,
    );

    return _InheritedThemeManager(
      controller: controller,
      child: widget.builder(_currentTheme.themeData),
    );
  }
}

class ThemeManagerController<T extends ColorThemeSchema> {
  final T currentTheme;
  final Brightness brightness;
  final List<T> themes;
  final void Function(T) setTheme;
  final void Function(Brightness) setBrightness;
  final VoidCallback toggleBrightness;

  const ThemeManagerController._({
    required this.currentTheme,
    required this.brightness,
    required this.themes,
    required this.setTheme,
    required this.setBrightness,
    required this.toggleBrightness,
  });
}

class _InheritedThemeManager extends InheritedWidget {
  final ThemeManagerController controller;

  const _InheritedThemeManager({
    required this.controller,
    required super.child,
  });

  @override
  bool updateShouldNotify(_InheritedThemeManager oldWidget) =>
      controller.currentTheme != oldWidget.controller.currentTheme ||
      controller.brightness != oldWidget.controller.brightness;
}

import 'package:colorist_gen/colorist.dart';
import 'package:example/src/color_themes.dart';
import 'package:example/ui/demo_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Wrap your MaterialApp widget with ThemeManager, passing your color schema as type parameter
    // Here, you provide available themes, and an optional initial theme or brightness.
    return ThemeManager<AppColorTheme>(
      themes: appColorThemes.values.toList(),
      // initialTheme: appColorThemes['ocean'],
      // initialBrightness: Brightness.dark,
      builder: (currentTheme) {
        // Your MaterialApp widget should use the theme provided by ThemeManager
        // Colors are made via extensions on ThemeData
        return MaterialApp(
          title: 'Colorist Demo',
          theme: currentTheme,
          home: const DemoHomePage(),
        );
      },
    );
  }
}

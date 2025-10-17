import 'package:colorist_gen/colorist_gen.dart';
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
    return ThemeManager<AppColorTheme>(
      themes: [
        oceanTheme,
        desertTheme,
        forestTheme,
      ],
      initialTheme: oceanTheme,
      builder: (currentTheme) {
        return MaterialApp(
          title: 'Colorist Demo',
          theme: currentTheme,
          home: const DemoHomePage(),
        );
      },
    );
  }
}

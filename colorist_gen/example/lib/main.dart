import 'package:example/src/material_app_theme.dart';
import 'package:example/ui/demo_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colorist Demo',
      theme: coloristMaterialAppTheme,
      home: const DemoHomePage(),
    );
  }
}

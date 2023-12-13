import 'package:flutter/material.dart';
import 'package:movie_app/src/config/theme/theme_config.dart';
import 'package:movie_app/src/movie_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeConfig.darkThemeConfig.brightness == Brightness.light
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: ThemeConfig.darkThemeConfig,
      home: const MovieApp(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'theme/theme_constants.dart';
import 'theme/theme_manager.dart';
import 'package:news_summary/modules/welcome_screen/welcome.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}

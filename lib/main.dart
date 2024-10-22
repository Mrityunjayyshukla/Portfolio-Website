import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_page.dart';
import 'package:portfolio/utils/color_palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      // darkTheme: darkMode,
      home: const HomePage(),
    );
  }
}
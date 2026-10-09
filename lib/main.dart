// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const Bleach());
}

class Bleach extends StatelessWidget {
  const Bleach({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bleach',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.orange,
        ),
      ),
      home: HomePage(),
    );
  }
}
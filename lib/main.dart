import 'package:flutter/material.dart';

void main() {
  runApp(const Bleach());
}

class Bleach extends StatelessWidget {
  const Bleach({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bleach Wiki',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900], // Fundo escuro
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.orange, // Laranja do cabelo do Ichigo
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bleach', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo à Soul Society!',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
// lib/screens/detail_screen.dart
import 'package:flutter/material.dart';
import '../models/character.dart';

class CharacterDetailScreen extends StatelessWidget {
  final Character character;

  const CharacterDetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.nome),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(character.imagePath),
              radius: 80,
            ),
            const SizedBox(height: 20),
            Text(
              character.nome,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              character.raca,
              style: const TextStyle(fontSize: 18, color: Colors.orangeAccent),
            ),
          ],
        ),
      ),
    );
  }
}
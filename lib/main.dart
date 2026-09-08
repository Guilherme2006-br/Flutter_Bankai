import 'package:flutter/material.dart';

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

class HomePage extends StatelessWidget {
 HomePage({super.key});

final List<Character> characters = [
  Character(
    nome: "Ichigo Kurosaki",
    raca: "Shinigami/Hollow/Quincy/Fullbringer/Vizard/Humano",
    imagePath: "assets/images/ichigo.jpg"
),

  Character(
    nome: "Rukia Kuchiki",
    raca: "Shinigami",
    imagePath: "assets/images/rukia.jpg"
),

  Character(
    nome: "Uryu Ishida",
    raca: "Quincy",
    imagePath: "assets/images/uryu.jpg"
),

  Character(
    nome: "Inoue Orihime",
    raca: "Humana/Fullbringer",
    imagePath: "assets/images/inoue.jpg"
  ),

  Character(
    nome: "Chad Yasutora",
    raca: "Humano/Fullbringer",
    imagePath: "assets/images/chad.jpg"
  ),

];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bleach', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: characters.length,
          itemBuilder: (context, index) {
            final character = characters[index];

            return Card(
              color: Colors.grey[850], 
              elevation: 4, 
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(character.imagePath),
                  radius: 30,
                ),
                title: Text(
                  character.nome,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  character.raca,
                  style: const TextStyle(color: Colors.orangeAccent),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white54),
                onTap: () {
                  print('Clicou no ${character.nome}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class Character {
  final String nome;
  final String raca;
  final String imagePath;

  Character({required this.nome, required this.raca, required this.imagePath});
}

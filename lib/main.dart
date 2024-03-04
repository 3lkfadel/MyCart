import 'package:flutter/material.dart';
import 'package:e_com_pro/page_accueil.dart';
import 'package:e_com_pro/page_instructions.dart'; // Importe la classe PageInstructions

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/accueil',
      routes: {
        '/accueil': (context) => PageAccueil(),
        '/instructions': (context) => PageInstructions(), // Définis la route pour la page d'instructions
      },
    );
  }
}

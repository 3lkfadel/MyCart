import 'package:e_com_pro/page_article.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ClothingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'CLOTHING',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ClothingScreen(),
      ),
    );
  }
}

class ClothingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Nombre d\'articles: 10', // Remplacez 10 par le nombre d'articles
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              10, // Changer de 4 à 10
              (index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ArticlePage()),
                  );
                },
                child: ClothingItem(
                  imageUrl: 'assets/images${index + 1}.jpeg', // Utilisez le chemin relatif de vos images
                  price: Random().nextInt(25001) + 15000, // Prix entre 15000 et 40000 FCFA
                  itemName: "Nom de l'article",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ClothingItem extends StatelessWidget {
  final String imageUrl;
  final int price;
  final String itemName;

  const ClothingItem({
    Key? key,
    required this.imageUrl,
    required this.price,
    required this.itemName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset( // Utilisez Image.asset pour charger l'image à partir des assets
                imageUrl, // Utilisez l'URL correspondante
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    // Ajoutez votre fonctionnalité d'aimer l'article ici
                  },
                  icon: Icon(Icons.favorite_border),
                ),
                Text(
                  '$price FCFA',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              itemName,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(ClothingApp());
}

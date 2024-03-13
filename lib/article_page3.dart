import 'package:e_com_pro/basket_page.dart';
import 'package:flutter/material.dart';

class ArticlePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Détails de l'article"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Premier Container avec une image de fond
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/8.jpg'), // Image de fond depuis les assets
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            SizedBox(height: 20.0),
            // Deuxième Container avec des bords arrondis
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'pantalons chasseur noir ',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Prix: \$20.00', // Remplacez par le prix réel
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'super jeams  de tres bonne qqualité chic et classe ', // Remplacez par la description réelle
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 50.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(width: 10.0),
                        _buildSizeButton('S'),
                        SizedBox(width: 10.0),
                        _buildSizeButton('M'),
                        SizedBox(width: 10.0),
                        _buildSizeButton('L'),
                        SizedBox(width: 10.0),
                        _buildSizeButton('XL'),
                        SizedBox(width: 10.0),
                        // Ajoutez d'autres tailles si nécessaire
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Rediriger vers la page du panier lorsqu'on appuie sur le bouton
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BasketPage()),
                        );
                      },
                      child: Text('Ajouter au panier'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSizeButton(String size) {
    return Container(
      width: 50.0,
      height: 50.0,
      margin: EdgeInsets.symmetric(horizontal: 5.0), // Ajout de marges
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5), // Grey Opacity
        borderRadius: BorderRadius.circular(25.0), // Round shape
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}

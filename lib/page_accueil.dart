import 'package:flutter/material.dart';

class PageAccueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Image.asset(
                'assets/purchasing-habits-abstract-concept_335657-2995.jpg.avif',
              ),
            ),
            Text(
              'Bienvenue sur mycart, votre destination de choix pour une expérience de shopping en ligne exceptionnelle',
              style: TextStyle(fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 100.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/instructions');
              },
              child: Text('Suivant'),
            ),
          ],
        ),
      ),
    );
  }
}

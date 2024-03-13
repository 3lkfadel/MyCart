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
              'Bienvenue sur notre application !',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 100.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/instructions');
                  },
                  child: Text('Suivant'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

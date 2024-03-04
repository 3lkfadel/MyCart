import 'package:flutter/material.dart';

class PageInstructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Image.asset('assets/purchasing-habits-abstract-concept_335657-2995.jpg.avif'),
            ),
            Text(
              'Pagde inscriptio ',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context, '/page_mise_en_garde');
                              },
                    child: Text('suivant'),
              ),
            ),
Align(
  alignment: Alignment.bottomLeft,
  child: ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(context, '/accueil');
  },
  child: Text('précedent'),
),
)

          ],
        ),
      ),
          );
        }
      }

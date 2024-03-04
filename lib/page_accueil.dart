import 'package:flutter/material.dart';

class PageAccueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bienvenue sur notre application !',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context, '/instructions');
                              },
                    child: Text('suivant'),
              ),
            ),
Align(
  alignment: Alignment.bottomLeft,
  child: ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(context, '/instructions');
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

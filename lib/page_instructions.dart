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
              child: Image.asset(
                  'assets/shopping-cart-with-bags-gifts-concept-illustration_114360-18775.avif'),
            ),
            Text(
              'Page inscription',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 100.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu_items');
                  },
                  child: Text('Skip'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/page_mise_en_garde');
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

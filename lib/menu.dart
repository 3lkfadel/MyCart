import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
   Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centrer verticalement les enfants de la colonne
          children: <Widget>[
            SingleChildScrollView(
              child:Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.amber[600],
                width: 48.0,
                 height: 48.0,
                 ),
            )
          ],
        ),
      ),
    );
  }
}
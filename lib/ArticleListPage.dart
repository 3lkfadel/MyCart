import 'package:e_com_pro/Menu_items.dart';
import 'package:flutter/material.dart';

class Valider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArticleDetailsPage(),
    );
  }
}

class ArticleDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Achat validé'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Menu_items()));          
                    },
              child: Text('Revenir au menu'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:e_com_pro/ArticleListPage.dart';
import 'package:flutter/material.dart';

class PlacingOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passer une commande'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nom :',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Entrez votre nom',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Numéro de téléphone :',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Entrez votre numéro de téléphone',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Adresse de livraison :',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Entrez votre adresse de livraison',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Prix total :',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '25000 FCFA', // Remplacez par le prix total en francs CFA
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    visualDensity: VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                  ),
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    value: false, // Changez la valeur en fonction de l'état de la case à cocher
                    onChanged: (bool? value) {
                      
                    },
                  ),
                ),
                Text('Appelez-moi pour clarification'),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Valider()));
                  // Action lorsque le bouton est pressé
                },
                child: Text('Confirmer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


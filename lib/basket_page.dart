import 'package:e_com_pro/placing_order.dart';
import 'package:flutter/material.dart';

class BasketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panier'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: [
                _buildCartItem('Nom de l\'article 1', 'M', 20, 'url_de_l_image'),
                _buildCartItem('Nom de l\'article 2', 'S', 30, 'url_de_l_image'),
                _buildCartItem('Nom de l\'article 3', 'L', 15, 'url_de_l_image'),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order Info',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Bright Beret (M)',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Items: 3',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Delivery',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'FCFA 10,000',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'FCFA 200',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Rediriger vers la page de placement de commande lorsque le bouton est pressé
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PlacingOrderPage()),
                      );
                    },
                    child: Text('Placing an order'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCartItem(String itemName, String itemSize, int itemPrice, String imageURL) {
    return ListTile(
      leading: Container(
        width: 70.0,
        height: 70.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: NetworkImage(imageURL),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemName,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Size: $itemSize',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          Text(
            'FCFA $itemPrice',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              // Action lorsque l'utilisateur souhaite ajouter un article
            },
            icon: Icon(Icons.add),
          ),
          Text(
            '1', // Nombre d'articles sélectionnés
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          IconButton(
            onPressed: () {
              // Action lorsque l'utilisateur souhaite supprimer un article
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BasketPage(),
  ));
}

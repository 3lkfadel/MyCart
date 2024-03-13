import 'package:flutter/material.dart';


class page_mise_en_garde extends StatelessWidget {
   page_mise_en_garde({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Image.asset('assets/seasonal-sale-discounts-presents-purchase-visiting-boutiques-luxury-shopping-price-reduction-promotional-coupons-special-holiday-offers-vector-isolated-concept-metaphor-illustration_335657-2766.avif'),
              
            ),
            Text("Rejoignez-nous",
            style: TextStyle(fontSize: 24.0),
              textAlign: TextAlign.center,
            
            ),
            SizedBox(height: 80.0),

            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/menu_items');
              },
               child: Text('commencé'),
               ),
            ),
          ],
        ),
      ),
    );
  }
}
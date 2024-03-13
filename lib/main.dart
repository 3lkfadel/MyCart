import 'package:e_com_pro/Menu_items.dart';
import 'package:e_com_pro/basket_page.dart';
import 'package:e_com_pro/clothing.dart';
import 'package:e_com_pro/menu.dart';
import 'package:e_com_pro/page_article.dart';
import 'package:e_com_pro/page_de_mise_en_garde.dart';
import 'package:e_com_pro/placing_order.dart';
import 'package:flutter/material.dart';
import 'package:e_com_pro/page_accueil.dart';
import 'package:e_com_pro/page_instructions.dart'; 


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/accueil',
      routes: {
        '/accueil': (context) => PageAccueil(),
        '/instructions': (context) => PageInstructions(), 
        '/page_mise_en_garde' :(context) => page_mise_en_garde(),
        '/Menu':(context) => Menu(),
        //'/infor_cartegorie':(context) => (),
        '/menu_items':(context) => Menu_items(),
        '/Panier':(context) => BasketPage(),
        '/ClothingApp':(context) => ClothingApp(),
        '/Valider_panier':(context) => PlacingOrderPage(),
        '/Details_article':(context) => ArticlePage(),

        


      },
    );
  }
}

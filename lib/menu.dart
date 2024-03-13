import 'package:e_com_pro/clothing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Menu extends StatelessWidget {
   Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       
        title: Text("Categorie"),
        actions: [GestureDetector(
          onTap: () {
             Navigator.pushNamed(context, '/Panier');
          },
           child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Icon(Icons.shop_sharp),
      ),
        )],
        
        
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9, // Définir la largeur 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                   ListTile(
                dense: true,
                contentPadding: EdgeInsets.all(16.0), // Ajoute du padding autour du contenu
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.black12),
                ),
                leading: Image.asset('assets/1.jpg'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClothingApp()));
                  },
                ),
                title: Text("Robe"),
              ),
              SizedBox(height: 20.0),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.all(16.0), // Ajoute du padding autour du contenu
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.black12),
                ),
                leading: Image.asset('assets/3.jpg'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                   Navigator.pushNamed(context, '/infor_cartegorie');
                  },
                ),
                title: Text("Accessoire"),
              ),
              SizedBox(height: 20.0),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.all(16.0), // Ajoute du padding autour du contenu
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.black12),
                ),
                leading: Image.asset('assets/4.jpg'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {},
                ),
                title: Text("SAC a main "),
              ),
              SizedBox(height: 20.0),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.all(16.0), // Ajoute du padding autour du contenu
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.black12),
                ),
                leading: Image.asset('assets/5.jpg'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {},
                ),
                title: Text("Talon"),
              ),
              SizedBox(height: 20.0),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.all(16.0), // Ajoute du padding autour du contenu
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.black12),
                ),
                leading: Image.asset('assets/6.jpg'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {},
                ),
                title: Text("T-shirt"),
              ),
                ],
              )
              )
            ],
          ),
        ),
      )

    );
  }
}
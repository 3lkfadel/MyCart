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
                'chemin_vers_ton_image/image.png',
                width: 200, 
              ),
            ),
            Text(
              'Instructions d\'utilisation de l\'application',
              style: TextStyle(fontSize: 24.0),
            
            ),

            SizedBox(height: 20.0),
            
           Align(
            alignment: Alignment.bottomRight,
            child:  ElevatedButton(
    onPressed: () {
     Navigator.pushNamed(context, '/instructions');
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.black,
      shape: RoundedRectangleBorder( 
      borderRadius: BorderRadius.circular(10.0),
    ),
    ) ,
    child: Text('suivant'),
        ),
           ),
       Align(
        alignment: Alignment.bottomLeft,
        child:  ElevatedButton(
            onPressed: () {
                   Navigator.pushNamed(context, '/accueil');
                 },
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white
                 ),
      child: Text('Skip ',
      ),
            ),
       )

                ],
              ),
            ),
          );
        }
      }

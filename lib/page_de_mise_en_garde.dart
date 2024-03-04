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
              child: Image.asset('assets/purchasing-habits-abstract-concept_335657-2995.jpg.avif'),

            ),
            SizedBox(height: 20.0),

            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Menu');
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
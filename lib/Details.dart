import 'package:flutter/material.dart';



class DetailScreen extends StatelessWidget {
  final String item;

  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Center(
        child: Text('Detail of the item: $item'),
      ),
    );
  }
}

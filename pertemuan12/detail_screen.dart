import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pertemuan12ScreenDetail extends StatelessWidget {
  final cover;
  final String model;
  final String developer;
  final String desc;
  final int price;
  final double rating;
  const Pertemuan12ScreenDetail(
      {super.key,
      required this.cover,
      required this.model,
      required this.developer,
      required this.desc,
      required this.price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Image.network(cover),
            ListTile(
              leading: Text('Model : '),
              title: Text(model),
            ),
            ListTile(
              leading: Text('Developer : '),
              title: Text(developer),
            ),
            ListTile(
              leading: Text('Description : '),
              title: Text(desc),
            ),
            ListTile(
              leading: Text('Price : '),
              title: Text('Rp.${price.toString()},-'),
            ),
            ListTile(
              leading: Text('Rating : '),
              title: Text(rating.toString()),
            ),
          ],
        ),
      ),
    );
  }
}

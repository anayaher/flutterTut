import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class Itemwidget extends StatelessWidget {
  final Item item;
  const Itemwidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      child: ListTile(
        leading: Image.network(
          item.image,
          scale: 1.5,
        ),
        onTap: () {},
        title: Text(
          item.name,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        subtitle: Text(item.decs),
        trailing: Text(
          "\$${item.price}",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),
        ),
      ),
    );
  }
}

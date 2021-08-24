import 'package:fluterdemo/models/catalog.dart';
import 'package:flutter/material.dart';

class itemwidget extends StatelessWidget {
  final Item item;


  const itemwidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 1.2,
        child: ListTile(
          onTap: () {
            print("${item.name}");
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price.toString()}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}

import 'package:fluterdemo/models/catalog.dart';
import 'package:fluterdemo/widgets/drawer.dart';
import 'package:fluterdemo/widgets/items_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  final dumylist=List.generate(20, (index) => CatalogModel.items[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*  backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),*/
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: dumylist.length,
        itemBuilder: (context, index) {
          return itemwidget(item: dumylist[index]);
        },
      ),
      drawer: mydraers(),
    );
  }
}

import 'package:fluterdemo/models/catalog.dart';
import 'package:fluterdemo/utils/routs.dart';
import 'package:fluterdemo/widgets/home_widget/catalog_header.dart';
import 'package:fluterdemo/widgets/home_widget/catalog_list.dart';
import 'package:fluterdemo/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async {
      await Future.delayed(Duration(seconds: 2));
      final catalogJson =
      await rootBundle.loadString("assets/files/catalog.json");
      final decodedData = jsonDecode(catalogJson);
      var productsData = decodedData["products"];
      CatalogModel.items = List.from(productsData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
      setState(() {});
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: MyTheme.creamColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRouts.cartrouts),
          backgroundColor: MyTheme.darkblue,
          child: Icon(CupertinoIcons.cart),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              children: [
                catalogheader(),
                if(CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                  cataloglist().expand()
                else
                  CircularProgressIndicator().centered().py(16).expand()

              ],
            )
          ),
        )
      );
    }

  }









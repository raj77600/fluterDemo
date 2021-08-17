import 'package:flutter/material.dart';
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    int days=30;
    num data=30.52;
    var dataplan="tuesday";
    return  Scaffold(
      appBar: AppBar(

        title: Text(
          "Catalog App"
        ),

      ),
        body: Center(
          child: Container(

            child: Text(


              "days of data plan="+"$days"+"Until this Month of the days $dataplan"+"otherwise you get  planty $data",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),

            ),



          ),



        ),
   drawer: Drawer(
        child: Container(

    ),
    ),
    );
  }

}

import 'package:flutter/material.dart';

void main(){

  runApp(Myapp2());

}
class Myapp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Material(
        child: Center(
          child: Container(
            child: Text(
              "dev Boomi"
            ),
          ),
        ),
      ) ,

    );

  }
  // This widget is the root of your application.
}


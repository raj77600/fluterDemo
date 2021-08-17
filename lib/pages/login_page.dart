import 'package:flutter/material.dart';
class Loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Material(
     child: Center(
       child: Text(
         "Login page",style: TextStyle(
         fontSize: 48,
         color: Colors.green,
         fontWeight: FontWeight.bold
       ),
         textScaleFactor: 1.0,
       ),
     ),

   );
  }

}
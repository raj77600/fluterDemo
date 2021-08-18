import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png",fit: BoxFit.cover,),
          SizedBox(height: 20,),

          Text("Welcome",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold

          ),
          ),
          SizedBox(height: 20,),
          Padding(padding:const EdgeInsets.symmetric(vertical: 16,horizontal: 32)
              ,child:Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter User Name",
                        labelText: "User name"

                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password"

                    ),
                  )
                ],
              )
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: ()
              {
                print("dev");
              },child: Text ("Login"),
          style: TextButton.styleFrom())
        ],

      ),


    );
  }

}
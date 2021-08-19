import 'dart:ui';

import 'package:fluterdemo/utils/routs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Loginpage extends StatefulWidget{
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name="";
  bool changebutton=false;
  final _formkey=GlobalKey<FormState>();
  moveToHome(BuildContext context) async{
    if(_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRouts.homegrouts);
      setState(() {
        changebutton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.white,

      child:SingleChildScrollView(


      child:Form(
        key: _formkey,

        child: Column(
          children: [
            Image.asset("assets/images/loginimage.png",fit: BoxFit.cover,),
            SizedBox(height: 20,),

            Text("Welcome $name",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold

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
                      validator: (value) {
                        if(value!.isEmpty) {
                          return "User name cannot be empty";
                        }return null;
                      },
                      onChanged:(value) {
                        name=value;
                        setState(() {

                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password"

                      ),
                      validator: (value) {
                        if(value!.isEmpty) {
                          return "password cannot be empty";
                        }else if(value.length<6){
                          return "password attleast 6 charcters";
                        }return null;
                      },
                    )
                  ],
                )
            ),
            SizedBox(height: 20,),
          Material(
            color: Colors.red,
              borderRadius: BorderRadius.circular(changebutton?50:8),
            child: InkWell(
              splashColor: Colors.red,
              onTap:() => moveToHome(context),
              child:AnimatedContainer(
                duration: Duration(
                  seconds: 1
                ),
                  height: 50,
                  width:changebutton ?50:150,

                  alignment: Alignment.center,
                  child: changebutton?Icon(Icons.done,color: Colors.white,):Text(
                    "Login",
                    style: TextStyle(

                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                  // decoration: BoxDecoration(
                  //     color: Colors.green,
                  //    /* shape: changebutton? BoxShape.circle:BoxShape.rectangle*/
                  //     borderRadius: BorderRadius.circular(changebutton?50:8)
                  // ),
            )

            ),
          )
          //   ElevatedButton(onPressed: ()
          //       {
          //         Navigator.pushNamed(context, MyRouts.homegrouts);
          //       },child: Text ("Login"),
          //   style: TextButton.styleFrom(minimumSize:Size (150,40)))
           ],

        ),
      ),
      ),

    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class mydraers extends StatelessWidget{
  String image_url="https://www.insidesport.co/wp-content/uploads/2020/08/sachin-tendulkar-1556110391.jpg";
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [

            DrawerHeader(
              padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,

                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple
                  ),
              margin: EdgeInsets.zero,

              accountName: Text("Raj Sharma"),
              accountEmail: Text("devraj776@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(image_url),
                  )

            )),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",
                textScaleFactor: 1.5,
                style: TextStyle(
              color: Colors.white
              ),),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.xmark_square_fill,color: Colors.white,),
              title: Text("Message",
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: Colors.white
                ),),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Profile",
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: Colors.white
                ),),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text("Email",
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: Colors.white
                ),),

            )
          ],

        ),

      ),
    );
  }

}
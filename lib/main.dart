import 'package:fluterdemo/pages/card_Page.dart';
import 'package:fluterdemo/pages/login_page.dart';
import 'package:fluterdemo/pages/recyclerview.dart';
import 'package:fluterdemo/utils/routs.dart';
import 'package:fluterdemo/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/_homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRouts.homegrouts,
      routes: {
        MyRouts.recyclepage: (context) => Recyclerviewpage(),
        MyRouts.homegrouts: (context) => HomePage(),
        MyRouts.Loggingrouts: (context) => Loginpage(),
        MyRouts.cartrouts: (context) => CartPage()
      },
    );
  }
}

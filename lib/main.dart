import 'package:fluterdemo/pages/login_page.dart';
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
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark

      ),
      initialRoute: "/home",
      routes: {
        "/":(context)=>Loginpage(),
        "/login":(Context)=>Loginpage()
      },
    );
  }
}


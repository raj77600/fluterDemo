import 'package:fluterdemo/pages/login_page.dart';
import 'package:fluterdemo/utils/routs.dart';
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
      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark

      ),
      initialRoute:"/",
      routes: {
        "/":(context)=>Loginpage(),
        MyRouts.homegrouts:(Context)=>Homepage(),
        MyRouts.Loggingrouts:(Context)=>Loginpage(),

      },
    );
  }
}


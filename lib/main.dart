import 'package:fluterdemo/pages/login_page.dart';
import 'package:flutter/material.dart';

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
          primarySwatch: Colors.green
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark

      ),
      initialRoute: "/home",
      routes: {
        "/":(context)=>Homepage(),
        "/login":(Context)=>Loginpage()
      },
    );
  }
}


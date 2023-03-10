import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          fontFamily: GoogleFonts.lato().fontFamily
      ),
          //primaryTextTheme: GoogleFonts.latoTextTheme()), //this effect applied only on primary texts
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(), //default
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}

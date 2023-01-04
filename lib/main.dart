import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key); //constructor

  @override
  Widget build(BuildContext context) {
    //UI work done in build
    return MaterialApp(
      home: Material(
        //since container wasn't looking good we wrapped it with another widget material
        child: Center(//again wrapped our container with centre to make text in centre
          child: Container(
            child: Text("Hello Vishal"),
          ),
        ),
      ),
    );
  }
}

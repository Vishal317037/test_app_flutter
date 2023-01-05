import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 10; //using final as it will not give any warning
    final String name = "Hello Vishal";

    return Scaffold(
      // for material formatting we make new file home_page in lib folder
      appBar: AppBar(title: Text("Flutter App")),
      body: Center(
        child: Container(
          child: Text("${name}, welcome to day $days"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

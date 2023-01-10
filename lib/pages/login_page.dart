import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              //padding: EdgeInsets.all(16.0),//padding for top,bottom,left,right all
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children:[
                  TextFormField(
                    decoration:
                    InputDecoration(hintText: "enter username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration:
                    InputDecoration(hintText: "enter password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                    onPressed: (){
                      print("Hello Vishal");
                    },

                  )
                ]
              ),
            )

          ],
        ));
  }
}

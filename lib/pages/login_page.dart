import 'package:flutter/material.dart';
import 'package:testproject/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton= false;


  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                //padding: EdgeInsets.all(16.0),//padding for top,bottom,left,right all
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "enter username", labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "enter password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: ()async {
                      setState(() {
                        changeButton=true;
                      });
                      await Future.delayed(Duration(seconds:1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                        width: changeButton?50:150,
                        height: 50,
                        alignment: Alignment.center,//aligns text inside container in centre
                        //color: Colors.deepPurple,
                        child:changeButton?Icon(
                          Icons.done,
                          color: Colors.white,
                        ): Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple, //giving color to box container
                          borderRadius: BorderRadius.circular(changeButton?50:8)

                        )),
                  )
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  //   onPressed: (){
                  //     //print("Hello Vishal");
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //
                  // )
                ]),
              )
            ],
          ),
        ));
  }
}

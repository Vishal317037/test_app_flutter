import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDyAtS2NEE3kIemaZAAtHVXQYSrPo70pOx8w&usqp=CAU";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(

              padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
            accountName: Text("Vishal Kumar",textScaleFactor: 1.2,),
            accountEmail: Text("vishal317037@gmail.com",textScaleFactor: 0.85),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageurl),
              ),
            ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text("Email",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}

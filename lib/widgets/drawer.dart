import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://avatars.githubusercontent.com/u/90202062?v=4";
    return Drawer(
      child: Container(
        color: Colors.green[600],
        child: ListView(
          padding: EdgeInsets.zero,
           children: [
             DrawerHeader(
               padding: EdgeInsets.zero,
               margin: EdgeInsets.zero,
               child: UserAccountsDrawerHeader
               (
                 margin: EdgeInsets.zero,
                 accountName: Text("Fareed Ahamd"),
                accountEmail: Text("fareedahmad1097@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl),),
                )),
              ListTile(
                leading: Icon(CupertinoIcons.home, color: Colors.white,),
                title: Text("Home", textScaleFactor: 1.2, style: TextStyle(color: Colors.white),),
              ),
                            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
                          ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
           ],
        ),
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tutorial_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
          Image.asset( "assets/images/undraw_secure_login_pdn4.png",
           fit: BoxFit.cover,
           ),
          SizedBox(
            height: 20,
          ),
          Text("Welcome $name",
          style: GoogleFonts.lato(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ), 
          Padding(
            padding: const EdgeInsets.symmetric(vertical:16.0, horizontal:32.0),
            child: Column(children:[
                      TextFormField(
                 decoration: InputDecoration(
                 hintText: "enter username",
                 labelText: "username",
               ),
                 onChanged: (value) {
                 name = value;
                 setState(() {});
               },
            ),
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                 hintText: "enter password",
                 labelText: "password",
               )
            ),
            SizedBox(
              height:40
            ),

            InkWell(
              onTap: () async{
                setState(() {
                 changeButton =true; 
                });
                await Future.delayed(Duration(seconds: 1),);
                 Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: changeButton? 50 : 150,
                alignment: Alignment.center,
                child: changeButton?Icon(Icons.done, color: Colors.white) : Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                decoration: BoxDecoration(
                color: Colors.green,
                // shape: changeButton? BoxShape.circle : BoxShape.rectangle,
                borderRadius: BorderRadius.circular(changeButton? 50 : 8),
                ),
              ),
            )

            // // loginButton
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            // },
            //  child: Text("Login"),
            // style: TextButton.styleFrom(minimumSize: Size(150, 40)),   
            // )
      
            ]),
          )
          ],
        ),
      )
    );
  }
}
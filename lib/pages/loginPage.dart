// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
        Image.asset( "assets/images/undraw_secure_login_pdn4.png", fit: BoxFit.cover),
        SizedBox(
          height: 20,
        ),
        Text("Welcome",
        style: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold),
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
             )
          ),
          TextFormField(
              obscureText: true,
              decoration: InputDecoration(
               hintText: "enter password",
               labelText: "password",
             )
          ),
          SizedBox(
            height:20
          ),

          ElevatedButton(
            onPressed: () {
              print("Hi fareed ahammad"); 
          },
           child: Text("Login"),)

          ]),
        )
        ],
      )
    );
  }
}
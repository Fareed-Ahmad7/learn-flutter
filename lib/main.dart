import 'package:flutter/material.dart';
import 'package:flutter_tutorial_catalog/pages/loginPage.dart';

import 'pages/home_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {"/": (context) => LoginPage(),}
    );
  }
}

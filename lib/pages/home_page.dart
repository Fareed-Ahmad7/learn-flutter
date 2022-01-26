import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "fareed";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Catalog"),
      ),
      body: Center(
        child: Text("welcome to $days days of ramadan by $name",

         style: TextStyle(
           fontWeight: FontWeight.bold,
           color: Colors.green)
         ),
      ),
    );
  }
}
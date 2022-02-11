import 'package:flutter/material.dart';
import 'package:flutter_tutorial_catalog/core/store.dart';
import 'package:flutter_tutorial_catalog/pages/cart_page.dart';
import 'package:flutter_tutorial_catalog/pages/loginPage.dart';
import 'package:flutter_tutorial_catalog/utils/routes.dart';
import 'package:flutter_tutorial_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import 'pages/home_page.dart';

void main() {
  runApp(VxState(
    store: MyStore(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // removes debug label
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => const LoginPage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
          MyRoutes.cartPageRoute: (context) => const CartPage(),
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tutorial_catalog/widgets/themes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // title: Text("CartPage"),
        title: "Cart".text.color(context.accentColor).make(),
      ),
    );
  }
}

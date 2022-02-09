import 'package:flutter/material.dart';
import 'package:flutter_tutorial_catalog/widgets/themes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/extensions/num_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/src/flutter/sizedbox.dart';
import 'package:velocity_x/src/flutter/widgets.dart';

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
      body: Column(
        children: [
          Placeholder().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          "\$9999".text.xl5.color(context.accentColor).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {},
            child: "Buy".text.extraBold.black.make(),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.accentColor)),
          ).w32(context)
        ],
      ),
    );
  }
}

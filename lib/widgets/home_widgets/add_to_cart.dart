import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial_catalog/core/store.dart';
import 'package:flutter_tutorial_catalog/models/cart.dart';
import 'package:flutter_tutorial_catalog/models/catalog.dart';
// import 'package:velocity_x/src/extensions/bool_ext.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:velocity_x/src/extensions/string_ext.dart';

import '../themes.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
 AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

// class _AddToCartState extends State<AddToCart> {
  // final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    // final CatalogModel _catalog = (VxState.store as MyStore).catalog;

    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);
          // isInCart = isInCart.toggle();
          // final _catalog = CatalogModel();
          // _cart.catalaog = _catalog;
          // _cart.add(catalog);
          // setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
      
    );
  }
}

// import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorial_catalog/core/store.dart';
import 'package:flutter_tutorial_catalog/models/cart.dart';
import 'dart:convert';
import 'package:flutter_tutorial_catalog/models/catalog.dart';
import 'package:flutter_tutorial_catalog/utils/routes.dart';
// import 'package:flutter_tutorial_catalog/widgets/drawer.dart';
import 'package:flutter_tutorial_catalog/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_tutorial_catalog/widgets/home_widgets/catalog_list.dart';
// import 'package:flutter_tutorial_catalog/widgets/item_widget.dart';
import 'package:flutter_tutorial_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "fareed";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        backgroundColor: context.canvasColor,
        floatingActionButton: VxBuilder(
            mutations: {AddMutation, RemoveMutation},
            builder: (BuildContext context, store, VxStatus? status) =>
                FloatingActionButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    MyRoutes.cartPageRoute,
                  ),
                  backgroundColor: MyTheme.darkBluish,
                  child: Icon(CupertinoIcons.cart),
                ).badge(
                    size: 20,
                    count: _cart.items.length,
                    color: Colors.blueGrey,
                    textStyle: TextStyle(fontWeight: FontWeight.bold))),
        body: SafeArea(
          bottom: false,
          child: Container(
            padding: Vx.m32,
            child: Column(
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}

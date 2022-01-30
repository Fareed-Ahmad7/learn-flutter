import 'package:flutter/material.dart';
import 'package:flutter_tutorial_catalog/models/catalog.dart';
import 'package:flutter_tutorial_catalog/widgets/drawer.dart';
import 'package:flutter_tutorial_catalog/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "fareed";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(8, (index) => CatalogModel.items[0]);

    return Scaffold(
      drawer: const Mydrawer(),
      appBar: AppBar(
        // backgroundColor: Colors.amber, 
        // elevation: 0.0, ////shadowing
        title: const Text("Catalog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            // return ItemWidget(item: CatalogModel.items[index],);
            return ItemWidget(item: dummyList[index],);
          }
        ,),
      )
    );
  }
}
import 'package:flutter_tutorial_catalog/models/cart.dart';
import 'package:flutter_tutorial_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
   late CatalogModel catalog;
   late CartModel cart;

   MyStore(){
     catalog = CatalogModel();
     cart = CartModel();
     cart.catalaog = catalog;
   }
}
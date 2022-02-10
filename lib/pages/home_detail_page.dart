import 'package:flutter/material.dart';
import 'package:flutter_tutorial_catalog/models/catalog.dart';
import 'package:flutter_tutorial_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_tutorial_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mH8,
          children: [
            "\$${catalog.price}"
                .text
                .bold
                .xl4
                .color(context.accentColor)
                .make(),
            AddToCart(catalog: catalog,).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  edge: VxEdge.TOP,
                  arcType: VxArcType.CONVEY,
                  child: Container(
                    width: context.screenWidth,
                    color: context.cardColor,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          catalog.name.text.xl4
                              .color(context.accentColor)
                              .bold
                              .make(),
                          catalog.desc.text.make(),
                          10.heightBox,
                          "Sanctus diam lorem takimata gubergren kasd et, dolor et aliquyam ipsum est justo sit lorem et Ea Lorem dolor magna ea et sea lorem amet sea. Sadipscing diam clita magna sit labore kasd dolore,Et et eos clita eirmod dolor lorem invidunt. Et nonumy est invidunt et. Stet vero aliquyam labore lorem et diam. duo amet nonumy."
                              .text
                              // .textStyle(context.captionStyle)
                              .make()
                              .p16()
                        ],
                      ).py64(),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

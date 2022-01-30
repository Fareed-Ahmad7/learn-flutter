class CatalogModel{
  static final items = [
    Item(
        id: 001,
        name: "iPhone 13 Pro",
        desc: "Apple iPhone 13th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-13-pro-family-hero?wid=940&hei=1112&fmt=png-alpha&.v=1631220221000")
  ];
}

class Item{
  final int id;
  final String name;
  final String desc; 
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}


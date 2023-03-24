class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iphone 14 Pro",
        decs: "Apple iphone 14th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-pro-finish-select-202209-6-1inch-deeppurple?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1663703840578"),
  ];
}

class Item {
  final int id;
  final String name;
  final String decs;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.decs,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        decs: map["decs"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "decs": decs,
        "price": decs,
        "color": color,
        "image": image,
      };
}

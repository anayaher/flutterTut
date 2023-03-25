class CatalogModel {
  static List<Item> items = [];
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

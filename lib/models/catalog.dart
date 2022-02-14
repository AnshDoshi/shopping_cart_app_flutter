class CatalogModel {
  static final items = [
    Item(
      id: 01,
      name: "ansh",
      desc: "macbook air",
      price: 75000,
      color: "#33505a",
      image: 'assets/images/air.jpeg',
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Item(
      id: "ansh01",
      name: "ansh",
      desc: "macbook air",
      price: 75000,
      color: "#33505a",
      image:
          "https://www.slashfilm.com/img/gallery/the-batman-release-date-and-more/l-intro-1629849970.jpg")
];
